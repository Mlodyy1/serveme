# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `hotwire-rails` gem.
# Please instead update this file by running `bin/tapioca gem hotwire-rails`.


# source://hotwire-rails//lib/hotwire-rails.rb#1
module Hotwire; end

# source://hotwire-rails//lib/hotwire/engine.rb#2
class Hotwire::Engine < ::Rails::Engine
  class << self
    # source://activesupport/7.2.0/lib/active_support/callbacks.rb#70
    def __callbacks; end
  end
end

# source://hotwire-rails//lib/hotwire/version.rb#2
Hotwire::VERSION = T.let(T.unsafe(nil), String)
