# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `coveralls` gem.
# Please instead update this file by running `bin/tapioca gem coveralls`.

# source://coveralls//lib/coveralls/version.rb#1
module Coveralls
  extend ::Coveralls

  # Returns the value of attribute noisy.
  #
  # source://coveralls//lib/coveralls.rb#15
  def noisy; end

  # Sets the attribute noisy
  #
  # @param value the value to set the attribute noisy to.
  #
  # source://coveralls//lib/coveralls.rb#15
  def noisy=(_arg0); end

  # @return [Boolean]
  #
  # source://coveralls//lib/coveralls.rb#98
  def noisy?; end

  # source://coveralls//lib/coveralls.rb#29
  def push!; end

  # Returns the value of attribute run_locally.
  #
  # source://coveralls//lib/coveralls.rb#15
  def run_locally; end

  # Sets the attribute run_locally
  #
  # @param value the value to set the attribute run_locally to.
  #
  # source://coveralls//lib/coveralls.rb#15
  def run_locally=(_arg0); end

  # source://coveralls//lib/coveralls.rb#35
  def setup!; end

  # @return [Boolean]
  #
  # source://coveralls//lib/coveralls.rb#79
  def should_run?; end

  # source://coveralls//lib/coveralls.rb#58
  def start!(simplecov_setting = T.unsafe(nil), &block); end

  # Returns the value of attribute testing.
  #
  # source://coveralls//lib/coveralls.rb#15
  def testing; end

  # Sets the attribute testing
  #
  # @param value the value to set the attribute testing to.
  #
  # source://coveralls//lib/coveralls.rb#15
  def testing=(_arg0); end

  # source://coveralls//lib/coveralls.rb#17
  def wear!(simplecov_setting = T.unsafe(nil), &block); end

  # source://coveralls//lib/coveralls.rb#22
  def wear_merged!(simplecov_setting = T.unsafe(nil), &block); end

  # @return [Boolean]
  #
  # source://coveralls//lib/coveralls.rb#93
  def will_run?; end
end

# source://coveralls//lib/coveralls/api.rb#6
class Coveralls::API
  class << self
    # source://coveralls//lib/coveralls/api.rb#118
    def apified_hash(hash); end

    # source://coveralls//lib/coveralls/api.rb#74
    def build_client(uri); end

    # source://coveralls//lib/coveralls/api.rb#88
    def build_request(path, hash); end

    # source://coveralls//lib/coveralls/api.rb#98
    def build_request_body(hash, boundary); end

    # source://coveralls//lib/coveralls/api.rb#51
    def disable_net_blockers!; end

    # source://coveralls//lib/coveralls/api.rb#70
    def endpoint_to_uri(endpoint); end

    # source://coveralls//lib/coveralls/api.rb#109
    def hash_to_file(hash); end

    # source://coveralls//lib/coveralls/api.rb#18
    def post_json(endpoint, hash); end
  end
end

# source://coveralls//lib/coveralls/api.rb#16
Coveralls::API::API_BASE = T.let(T.unsafe(nil), String)

# source://coveralls//lib/coveralls/api.rb#13
Coveralls::API::API_DOMAIN = T.let(T.unsafe(nil), String)

# source://coveralls//lib/coveralls/api.rb#11
Coveralls::API::API_HOST = T.let(T.unsafe(nil), String)

# source://coveralls//lib/coveralls/api.rb#12
Coveralls::API::API_PROTOCOL = T.let(T.unsafe(nil), String)

# source://coveralls//lib/coveralls/configuration.rb#5
module Coveralls::Configuration
  class << self
    # source://coveralls//lib/coveralls/configuration.rb#7
    def configuration; end

    # source://coveralls//lib/coveralls/configuration.rb#129
    def configuration_path; end

    # source://coveralls//lib/coveralls/configuration.rb#153
    def git; end

    # source://coveralls//lib/coveralls/configuration.rb#137
    def pwd; end

    # source://coveralls//lib/coveralls/configuration.rb#147
    def rails_root; end

    # source://coveralls//lib/coveralls/configuration.rb#191
    def relevant_env; end

    # source://coveralls//lib/coveralls/configuration.rb#133
    def root; end

    # source://coveralls//lib/coveralls/configuration.rb#82
    def set_service_params_for_appveyor(config); end

    # source://coveralls//lib/coveralls/configuration.rb#61
    def set_service_params_for_circleci(config); end

    # source://coveralls//lib/coveralls/configuration.rb#108
    def set_service_params_for_coveralls_local(config); end

    # source://coveralls//lib/coveralls/configuration.rb#100
    def set_service_params_for_gitlab(config); end

    # source://coveralls//lib/coveralls/configuration.rb#75
    def set_service_params_for_jenkins(config); end

    # source://coveralls//lib/coveralls/configuration.rb#69
    def set_service_params_for_semaphore(config); end

    # source://coveralls//lib/coveralls/configuration.rb#91
    def set_service_params_for_tddium(config); end

    # source://coveralls//lib/coveralls/configuration.rb#54
    def set_service_params_for_travis(config, service_name); end

    # source://coveralls//lib/coveralls/configuration.rb#114
    def set_standard_service_params_for_generic_ci(config); end

    # source://coveralls//lib/coveralls/configuration.rb#141
    def simplecov_root; end

    # source://coveralls//lib/coveralls/configuration.rb#123
    def yaml_config; end
  end
end

# source://coveralls//lib/coveralls.rb#10
class Coveralls::NilFormatter
  # source://coveralls//lib/coveralls.rb#11
  def format(result); end
end

# Public: Methods for formatting strings with Term::ANSIColor.
# Does not utilize monkey-patching and should play nicely when
# included with other libraries.
#
# All methods are module methods and should be called on
# the Coveralls::Output module.
#
# Examples
#
#   Coveralls::Output.format("Hello World", :color => "cyan")
#   # => "\e[36mHello World\e[0m"
#
#   Coveralls::Output.print("Hello World")
#   # Hello World => nil
#
#   Coveralls::Output.puts("Hello World", :color => "underline")
#   # Hello World
#   # => nil
#
# To silence output completely:
#
#   Coveralls::Output.silent = true
#
# or set this environment variable:
#
#   COVERALLS_SILENT
#
# To disable color completely:
#
#   Coveralls::Output.no_color = true
#
# source://coveralls//lib/coveralls/output.rb#34
module Coveralls::Output
  extend ::Coveralls::Output

  # Public: Formats the given string with the specified color
  # through Term::ANSIColor
  #
  # string  - the text to be formatted
  # options - The hash of options used for formatting the text:
  #           :color - The color to be passed as a method to
  #                    Term::ANSIColor
  #
  # Examples
  #
  #   Coveralls::Output.format("Hello World!", :color => "cyan")
  #   # => "\e[36mHello World\e[0m"
  #
  # Returns the formatted string.
  #
  # source://coveralls//lib/coveralls/output.rb#61
  def format(string, options = T.unsafe(nil)); end

  # Returns the value of attribute no_color.
  #
  # source://coveralls//lib/coveralls/output.rb#35
  def no_color; end

  # Sets the attribute no_color
  #
  # @param value the value to set the attribute no_color to.
  #
  # source://coveralls//lib/coveralls/output.rb#35
  def no_color=(_arg0); end

  # @return [Boolean]
  #
  # source://coveralls//lib/coveralls/output.rb#43
  def no_color?; end

  # source://coveralls//lib/coveralls/output.rb#39
  def output; end

  # Sets the attribute output
  #
  # @param value the value to set the attribute output to.
  #
  # source://coveralls//lib/coveralls/output.rb#36
  def output=(_arg0); end

  # Public: Passes .format to Kernel#print
  #
  # string  - the text to be formatted
  # options - The hash of options used for formatting the text:
  #           :color - The color to be passed as a method to
  #                    Term::ANSIColor
  #
  # Example
  #
  #   Coveralls::Output.print("Hello World!", :color => "underline")
  #
  # Returns nil.
  #
  # source://coveralls//lib/coveralls/output.rb#105
  def print(string, options = T.unsafe(nil)); end

  # Public: Passes .format to Kernel#puts
  #
  # string  - the text to be formatted
  # options - The hash of options used for formatting the text:
  #           :color - The color to be passed as a method to
  #                    Term::ANSIColor
  #
  #
  # Example
  #
  #   Coveralls::Output.puts("Hello World", :color => "cyan")
  #
  # Returns nil.
  #
  # source://coveralls//lib/coveralls/output.rb#88
  def puts(string, options = T.unsafe(nil)); end

  # Returns the value of attribute silent.
  #
  # source://coveralls//lib/coveralls/output.rb#35
  def silent; end

  # Sets the attribute silent
  #
  # @param value the value to set the attribute silent to.
  #
  # source://coveralls//lib/coveralls/output.rb#35
  def silent=(_arg0); end

  # @return [Boolean]
  #
  # source://coveralls//lib/coveralls/output.rb#110
  def silent?; end
end

# source://coveralls//lib/coveralls/simplecov.rb#2
module Coveralls::SimpleCov; end

# source://coveralls//lib/coveralls/simplecov.rb#3
class Coveralls::SimpleCov::Formatter
  # source://coveralls//lib/coveralls/simplecov.rb#77
  def display_error(e); end

  # source://coveralls//lib/coveralls/simplecov.rb#5
  def display_result(result); end

  # source://coveralls//lib/coveralls/simplecov.rb#54
  def format(result); end

  # source://coveralls//lib/coveralls/simplecov.rb#29
  def get_source_files(result); end

  # source://coveralls//lib/coveralls/simplecov.rb#90
  def output_message(result); end

  # source://coveralls//lib/coveralls/simplecov.rb#94
  def short_filename(filename); end
end

# source://coveralls//lib/coveralls/version.rb#2
Coveralls::VERSION = T.let(T.unsafe(nil), String)
