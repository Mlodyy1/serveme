# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `libv8-node` gem.
# Please instead update this file by running `bin/tapioca gem libv8-node`.

# source://libv8-node//lib/libv8/node/version.rb#1
module Libv8; end

# source://libv8-node//lib/libv8/node/version.rb#3
module Libv8::Node
  class << self
    # source://libv8-node//lib/libv8/node.rb#7
    def configure_makefile; end
  end
end

# from v8/include/v8-version.h
#
# source://libv8-node//lib/libv8/node/version.rb#6
Libv8::Node::LIBV8_VERSION = T.let(T.unsafe(nil), String)

# source://libv8-node//ext/libv8-node/location.rb#10
class Libv8::Node::Location
  # source://libv8-node//ext/libv8-node/location.rb#11
  def install!; end

  class << self
    # source://libv8-node//ext/libv8-node/location.rb#19
    def load!; end
  end
end

# source://libv8-node//ext/libv8-node/location.rb#66
class Libv8::Node::Location::MkmfContext
  # source://libv8-node//ext/libv8-node/location.rb#67
  def incflags; end

  # source://libv8-node//ext/libv8-node/location.rb#71
  def ldflags; end
end

# source://libv8-node//ext/libv8-node/location.rb#25
class Libv8::Node::Location::Vendor < ::Libv8::Node::Location
  # source://libv8-node//ext/libv8-node/location.rb#40
  def configure(context = T.unsafe(nil)); end

  # source://libv8-node//ext/libv8-node/location.rb#26
  def install!; end

  # source://libv8-node//ext/libv8-node/location.rb#45
  def verify_installation!; end
end

# source://libv8-node//ext/libv8-node/location.rb#59
class Libv8::Node::Location::Vendor::ArchiveNotFound < ::StandardError
  # @return [ArchiveNotFound] a new instance of ArchiveNotFound
  #
  # source://libv8-node//ext/libv8-node/location.rb#60
  def initialize(filename); end
end

# source://libv8-node//ext/libv8-node/location.rb#57
class Libv8::Node::Location::Vendor::HeaderNotFound < ::StandardError; end

# source://libv8-node//lib/libv8/node/version.rb#5
Libv8::Node::NODE_VERSION = T.let(T.unsafe(nil), String)

# source://libv8-node//ext/libv8-node/paths.rb#7
module Libv8::Node::Paths
  private

  # source://libv8-node//ext/libv8-node/paths.rb#26
  def config; end

  # source://libv8-node//ext/libv8-node/paths.rb#10
  def include_paths; end

  # source://libv8-node//ext/libv8-node/paths.rb#14
  def object_paths; end

  # source://libv8-node//ext/libv8-node/paths.rb#22
  def platform; end

  # source://libv8-node//ext/libv8-node/paths.rb#30
  def vendored_source_path; end

  class << self
    # source://libv8-node//ext/libv8-node/paths.rb#26
    def config; end

    # source://libv8-node//ext/libv8-node/paths.rb#10
    def include_paths; end

    # source://libv8-node//ext/libv8-node/paths.rb#14
    def object_paths; end

    # source://libv8-node//ext/libv8-node/paths.rb#22
    def platform; end

    # source://libv8-node//ext/libv8-node/paths.rb#30
    def vendored_source_path; end
  end
end

# source://libv8-node//lib/libv8/node/version.rb#4
Libv8::Node::VERSION = T.let(T.unsafe(nil), String)