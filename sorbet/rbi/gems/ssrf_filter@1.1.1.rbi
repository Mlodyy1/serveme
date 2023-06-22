# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `ssrf_filter` gem.
# Please instead update this file by running `bin/tapioca gem ssrf_filter`.

# source://ssrf_filter//lib/ssrf_filter/patch/resolv.rb#5
class SsrfFilter
  class << self
    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#108
    def delete(url, options = T.unsafe(nil), &block); end

    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#108
    def get(url, options = T.unsafe(nil), &block); end

    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#108
    def head(url, options = T.unsafe(nil), &block); end

    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#108
    def patch(url, options = T.unsafe(nil), &block); end

    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#108
    def post(url, options = T.unsafe(nil), &block); end

    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#108
    def put(url, options = T.unsafe(nil), &block); end

    private

    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#167
    def fetch_once(uri, ip, verb, options, &block); end

    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#156
    def host_header(hostname, uri); end

    # @return [Boolean]
    #
    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#150
    def ipaddr_has_mask?(ipaddr); end

    # @raise [ArgumentError]
    #
    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#9
    def prefixlen_from_ipaddr(ipaddr); end

    # @return [Boolean]
    #
    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#140
    def unsafe_ip_address?(ip_address); end

    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#211
    def validate_request(request); end

    # source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#224
    def with_forced_hostname(hostname, ip, &_block); end
  end
end

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#104
class SsrfFilter::CRLFInjection < ::SsrfFilter::Error; end

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#75
SsrfFilter::DEFAULT_MAX_REDIRECTS = T.let(T.unsafe(nil), Integer)

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#71
SsrfFilter::DEFAULT_RESOLVER = T.let(T.unsafe(nil), Proc)

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#69
SsrfFilter::DEFAULT_SCHEME_WHITELIST = T.let(T.unsafe(nil), Array)

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#89
class SsrfFilter::Error < ::StandardError; end

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#87
SsrfFilter::FIBER_ADDRESS_KEY = T.let(T.unsafe(nil), Symbol)

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#86
SsrfFilter::FIBER_HOSTNAME_KEY = T.let(T.unsafe(nil), Symbol)

# https://en.wikipedia.org/wiki/Reserved_IP_addresses
#
# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#28
SsrfFilter::IPV4_BLACKLIST = T.let(T.unsafe(nil), Array)

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#47
SsrfFilter::IPV6_BLACKLIST = T.let(T.unsafe(nil), Array)

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#92
class SsrfFilter::InvalidUriScheme < ::SsrfFilter::Error; end

# source://ssrf_filter//lib/ssrf_filter/patch/resolv.rb#6
module SsrfFilter::Patch; end

# source://ssrf_filter//lib/ssrf_filter/patch/resolv.rb#7
module SsrfFilter::Patch::Resolv
  class << self
    # source://ssrf_filter//lib/ssrf_filter/patch/resolv.rb#32
    def apply!; end
  end
end

# As described in ssl_socket.rb, we want to patch ruby's http connection code to allow us to make outbound network
# requests while ensuring that both:
# 1) we're connecting to a public / non-private ip address
# 2) https connections continue to work
#
# This used to work fine prior to this change in ruby's net/http library:
# https://github.com/ruby/net-http/pull/36
# After this changed was introduced our patch no longer works - we need to set the hostname to the correct
# value on the SSLSocket (`s.hostname = ssl_host_address`), but that code path no longer executes due to the
# modification in the linked pull request.
#
# To work around this we introduce the patch below, which forces our ip address string to not match against the
# Resolv IPv4/IPv6 regular expressions. This is ugly and cumbersome but I didn't see any better path.
#
# source://ssrf_filter//lib/ssrf_filter/patch/resolv.rb#21
class SsrfFilter::Patch::Resolv::PatchedRegexp < ::Regexp
  # source://ssrf_filter//lib/ssrf_filter/patch/resolv.rb#22
  def ===(other); end
end

# source://ssrf_filter//lib/ssrf_filter/patch/ssl_socket.rb#5
module SsrfFilter::Patch::SSLSocket
  class << self
    # When fetching a url we'd like to have the following workflow:
    # 1) resolve the hostname www.example.com, and choose a public ip address to connect to
    # 2) connect to that specific ip address, to prevent things like DNS TOCTTOU bugs or other trickery
    #
    # Ideally this would happen by the ruby http library giving us control over DNS resolution,
    # but it doesn't. Instead, when making the request we set the uri.hostname to the chosen ip address,
    # and send a 'Host' header of the original hostname, i.e. connect to 'http://93.184.216.34/' and send
    # a 'Host: www.example.com' header.
    #
    # This works for the http case, http://www.example.com. For the https case, this causes certificate
    # validation failures, since the server certificate for https://www.example.com will not have a
    # Subject Alternate Name for 93.184.216.34.
    #
    # Thus we perform the monkey-patch below, modifying SSLSocket's `post_connection_check(hostname)`
    # and `hostname=(hostname)` methods:
    # If our fiber local variable is set, use that for the hostname instead, otherwise behave as usual.
    # The only time the variable will be set is if you are executing inside a `with_forced_hostname` block,
    # which is used in ssrf_filter.rb.
    #
    # An alternative approach could be to pass in our own OpenSSL::X509::Store with a custom
    # `verify_callback` to the ::Net::HTTP.start call, but this would require reimplementing certification
    # validation, which is dangerous. This way we can piggyback on the existing validation and simply pretend
    # that we connected to the desired hostname.
    #
    # source://ssrf_filter//lib/ssrf_filter/patch/ssl_socket.rb#30
    def apply!; end
  end
end

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#95
class SsrfFilter::PrivateIPAddress < ::SsrfFilter::Error; end

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#101
class SsrfFilter::TooManyRedirects < ::SsrfFilter::Error; end

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#98
class SsrfFilter::UnresolvedHostname < ::SsrfFilter::Error; end

# source://ssrf_filter//lib/ssrf_filter/ssrf_filter.rb#77
SsrfFilter::VERB_MAP = T.let(T.unsafe(nil), Hash)

# source://ssrf_filter//lib/ssrf_filter/version.rb#4
SsrfFilter::VERSION = T.let(T.unsafe(nil), String)
