# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `cucumber-tag-expressions` gem.
# Please instead update this file by running `bin/tapioca gem cucumber-tag-expressions`.


# source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#3
module Cucumber
  class << self
    # source://cucumber/9.2.0/lib/cucumber/deprecate.rb#7
    def deprecate(message, method, remove_after_version); end

    # source://cucumber/9.2.0/lib/cucumber/platform.rb#17
    def file_mode(mode, encoding = T.unsafe(nil)); end

    # source://cucumber/9.2.0/lib/cucumber.rb#15
    def logger; end

    # source://cucumber/9.2.0/lib/cucumber.rb#23
    def logger=(logger); end

    # source://cucumber/9.2.0/lib/cucumber/platform.rb#14
    def use_full_backtrace; end

    # source://cucumber/9.2.0/lib/cucumber/platform.rb#14
    def use_full_backtrace=(_arg0); end

    # source://cucumber/9.2.0/lib/cucumber.rb#13
    def use_legacy_autoloader; end

    # source://cucumber/9.2.0/lib/cucumber.rb#13
    def use_legacy_autoloader=(_arg0); end

    # source://cucumber/9.2.0/lib/cucumber.rb#13
    def wants_to_quit; end

    # source://cucumber/9.2.0/lib/cucumber.rb#13
    def wants_to_quit=(_arg0); end
  end
end

# source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#4
module Cucumber::TagExpressions; end

# And expression node
#
# source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#61
class Cucumber::TagExpressions::And
  # @return [And] a new instance of And
  #
  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#62
  def initialize(left, right); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#67
  def evaluate(variables); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#71
  def to_s; end
end

# Literal expression node
#
# source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#6
class Cucumber::TagExpressions::Literal
  # @return [Literal] a new instance of Literal
  #
  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#7
  def initialize(value); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#11
  def evaluate(variables); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#15
  def to_s; end
end

# Not expression node
#
# source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#25
class Cucumber::TagExpressions::Not
  # @return [Not] a new instance of Not
  #
  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#26
  def initialize(expression); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#30
  def evaluate(variables); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#34
  def to_s; end
end

# Or expression node
#
# source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#45
class Cucumber::TagExpressions::Or
  # @return [Or] a new instance of Or
  #
  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#46
  def initialize(left, right); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#51
  def evaluate(variables); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#55
  def to_s; end
end

# source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#7
class Cucumber::TagExpressions::Parser
  # @return [Parser] a new instance of Parser
  #
  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#8
  def initialize; end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#21
  def parse(infix_expression); end

  private

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#45
  def assoc_of(token, value); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#133
  def check(infix_expression, expected_token_type, token_type); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#105
  def handle_binary_operator(infix_expression, token, expected_token_type); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#118
  def handle_close_paren(infix_expression, _token, expected_token_type); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#127
  def handle_literal(infix_expression, token, expected_token_type); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#112
  def handle_open_paren(infix_expression, token, expected_token_type); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#99
  def handle_unary_operator(infix_expression, token, expected_token_type); end

  # @return [Boolean]
  #
  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#49
  def lower_precedence?(operation); end

  # @return [Boolean]
  #
  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#54
  def operator?(token); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#139
  def pop(array, amount = T.unsafe(nil)); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#58
  def precedence(token); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#90
  def push_expression(token); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#62
  def tokenize(infix_expression); end

  # @return [Boolean]
  #
  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/parser.rb#146
  def whitespace?(char); end
end

# source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#76
class Cucumber::TagExpressions::True
  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#77
  def evaluate(_variables); end

  # source://cucumber-tag-expressions//lib/cucumber/tag_expressions/expressions.rb#81
  def to_s; end
end