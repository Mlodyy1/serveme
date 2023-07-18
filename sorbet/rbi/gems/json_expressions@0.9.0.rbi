# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `json_expressions` gem.
# Please instead update this file by running `bin/tapioca gem json_expressions`.

# source://json_expressions//lib/json_expressions/core_extensions.rb#82
class Array
  include ::Enumerable
  include ::JsonExpressions::CoreExtensions

  # source://json_expressions//lib/json_expressions/core_extensions.rb#52
  def ignore_extra_values; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#64
  def ignore_extra_values!; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#48
  def reject_extra_values; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#56
  def reject_extra_values!; end
end

# source://activesupport/7.0.5/lib/active_support/core_ext/array/deprecated_conversions.rb#4
Array::NOT_SET = T.let(T.unsafe(nil), Object)

# source://json_expressions//lib/json_expressions/core_extensions.rb#74
class Hash
  include ::Enumerable
  include ::JsonExpressions::CoreExtensions

  # source://json_expressions//lib/json_expressions/core_extensions.rb#52
  def ignore_extra_keys; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#64
  def ignore_extra_keys!; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#48
  def reject_extra_keys; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#56
  def reject_extra_keys!; end
end

# source://json_expressions//lib/json_expressions/core_extensions.rb#1
module JsonExpressions; end

# source://json_expressions//lib/json_expressions/core_extensions.rb#7
module JsonExpressions::CoreExtensions
  # source://json_expressions//lib/json_expressions/core_extensions.rb#52
  def forgiving; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#64
  def forgiving!; end

  # @return [Boolean]
  #
  # source://json_expressions//lib/json_expressions/core_extensions.rb#44
  def forgiving?; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#16
  def ordered; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#24
  def ordered!; end

  # @return [Boolean]
  #
  # source://json_expressions//lib/json_expressions/core_extensions.rb#8
  def ordered?; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#48
  def strict; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#56
  def strict!; end

  # @return [Boolean]
  #
  # source://json_expressions//lib/json_expressions/core_extensions.rb#40
  def strict?; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#20
  def unordered; end

  # source://json_expressions//lib/json_expressions/core_extensions.rb#32
  def unordered!; end

  # @return [Boolean]
  #
  # source://json_expressions//lib/json_expressions/core_extensions.rb#12
  def unordered?; end
end

# source://json_expressions//lib/json_expressions/core_extensions.rb#3
module JsonExpressions::Forgiving; end

# source://json_expressions//lib/json_expressions/matcher.rb#5
class JsonExpressions::Matcher
  # @return [Matcher] a new instance of Matcher
  #
  # source://json_expressions//lib/json_expressions/matcher.rb#41
  def initialize(json, options = T.unsafe(nil)); end

  # source://json_expressions//lib/json_expressions/matcher.rb#48
  def =~(other); end

  # Returns the value of attribute captures.
  #
  # source://json_expressions//lib/json_expressions/matcher.rb#39
  def captures; end

  # Returns the value of attribute last_error.
  #
  # source://json_expressions//lib/json_expressions/matcher.rb#38
  def last_error; end

  # source://json_expressions//lib/json_expressions/matcher.rb#48
  def match(other); end

  # source://json_expressions//lib/json_expressions/matcher.rb#55
  def to_s; end

  private

  # source://json_expressions//lib/json_expressions/matcher.rb#179
  def apply_array_defaults(array); end

  # source://json_expressions//lib/json_expressions/matcher.rb#189
  def apply_hash_defaults(hash); end

  # source://json_expressions//lib/json_expressions/matcher.rb#80
  def capture(path, name, value); end

  # source://json_expressions//lib/json_expressions/matcher.rb#173
  def make_path(path, segment); end

  # source://json_expressions//lib/json_expressions/matcher.rb#103
  def match_array(path, matcher, other); end

  # source://json_expressions//lib/json_expressions/matcher.rb#138
  def match_hash(path, matcher, other); end

  # source://json_expressions//lib/json_expressions/matcher.rb#66
  def match_json(path, matcher, other); end

  # source://json_expressions//lib/json_expressions/matcher.rb#94
  def match_obj(path, matcher, other, meth); end

  # source://json_expressions//lib/json_expressions/matcher.rb#61
  def reset!; end

  # source://json_expressions//lib/json_expressions/matcher.rb#169
  def set_last_error(path, message); end

  # @return [Boolean]
  #
  # source://json_expressions//lib/json_expressions/matcher.rb#199
  def triple_equable?(obj); end

  class << self
    # JsonExpressions::Matcher.assume_strict_arrays (Boolean)
    #   By default, reject arrays with extra elements when not specified
    #   Default: true
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#22
    def assume_strict_arrays; end

    # JsonExpressions::Matcher.assume_strict_arrays (Boolean)
    #   By default, reject arrays with extra elements when not specified
    #   Default: true
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#22
    def assume_strict_arrays=(_arg0); end

    # JsonExpressions::Matcher.assume_strict_hashes (Boolean)
    #   By default, reject hashes with extra keys when not specified
    #   Default: true
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#34
    def assume_strict_hashes; end

    # JsonExpressions::Matcher.assume_strict_hashes (Boolean)
    #   By default, reject hashes with extra keys when not specified
    #   Default: true
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#34
    def assume_strict_hashes=(_arg0); end

    # JsonExpressions::Matcher.assume_unordered_arrays (Boolean)
    #   By default, assume arrays are unordered when not specified
    #   Default: true
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#16
    def assume_unordered_arrays; end

    # JsonExpressions::Matcher.assume_unordered_arrays (Boolean)
    #   By default, assume arrays are unordered when not specified
    #   Default: true
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#16
    def assume_unordered_arrays=(_arg0); end

    # JsonExpressions::Matcher.assume_unordered_hashes (Boolean)
    #   By default, assume hashes are unordered when not specified
    #   Default: true
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#28
    def assume_unordered_hashes; end

    # JsonExpressions::Matcher.assume_unordered_hashes (Boolean)
    #   By default, assume hashes are unordered when not specified
    #   Default: true
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#28
    def assume_unordered_hashes=(_arg0); end

    # JsonExpressions::Matcher.skip_triple_equal_on (Array)
    #   An array of classes and modules with undesirable `===` behavior
    #   Default: []
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#10
    def skip_triple_equal_on; end

    # JsonExpressions::Matcher.skip_triple_equal_on (Array)
    #   An array of classes and modules with undesirable `===` behavior
    #   Default: []
    #
    # source://json_expressions//lib/json_expressions/matcher.rb#10
    def skip_triple_equal_on=(_arg0); end
  end
end

# source://json_expressions//lib/json_expressions/core_extensions.rb#4
module JsonExpressions::Ordered; end

# source://json_expressions//lib/json_expressions/core_extensions.rb#2
module JsonExpressions::Strict; end

# source://json_expressions//lib/json_expressions/core_extensions.rb#5
module JsonExpressions::Unordered; end

# source://json_expressions//lib/json_expressions.rb#4
JsonExpressions::WILDCARD_MATCHER = T.let(T.unsafe(nil), Object)