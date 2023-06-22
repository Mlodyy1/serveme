# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `better_errors` gem.
# Please instead update this file by running `bin/tapioca gem better_errors`.

# @private
#
# source://better_errors//lib/better_errors/version.rb#1
module BetterErrors
  class << self
    # The path to the root of the application. Better Errors uses this property
    # to determine if a file in a backtrace should be considered an application
    # frame. If you are using Better Errors with Rails, you do not need to set
    # this attribute manually.
    #
    # @return [String]
    #
    # source://better_errors//lib/better_errors.rb#23
    def application_root; end

    # The path to the root of the application. Better Errors uses this property
    # to determine if a file in a backtrace should be considered an application
    # frame. If you are using Better Errors with Rails, you do not need to set
    # this attribute manually.
    #
    # @return [String]
    #
    # source://better_errors//lib/better_errors.rb#23
    def application_root=(_arg0); end

    # @private
    #
    # source://better_errors//lib/better_errors.rb#33
    def binding_of_caller_available; end

    # @private
    #
    # source://better_errors//lib/better_errors.rb#33
    def binding_of_caller_available=(_arg0); end

    # @private
    # @private
    #
    # source://better_errors//lib/better_errors.rb#33
    def binding_of_caller_available?; end

    # Automatically sniffs a default editor preset based on the EDITOR
    # environment variable.
    #
    # @return [Symbol]
    #
    # source://better_errors//lib/better_errors.rb#131
    def default_editor; end

    # Returns an object which responds to #url, which when called with
    # a filename and line number argument,
    # returns a URL to open the filename and line in the selected editor.
    #
    # Generates TextMate URLs by default.
    #
    #   BetterErrors.editor.url("/some/file", 123)
    #     # => txmt://open?url=file:///some/file&line=123
    #
    # @return [Proc]
    #
    # source://better_errors//lib/better_errors.rb#65
    def editor; end

    # Configures how Better Errors generates open-in-editor URLs.
    #
    # @overload BetterErrors.editor=
    # @overload BetterErrors.editor=
    # @overload BetterErrors.editor=
    #
    # source://better_errors//lib/better_errors.rb#106
    def editor=(editor); end

    # List of classes that are excluded from inspection.
    #
    # @return [Array]
    #
    # source://better_errors//lib/better_errors.rb#49
    def ignored_classes; end

    # List of classes that are excluded from inspection.
    #
    # @return [Array]
    #
    # source://better_errors//lib/better_errors.rb#49
    def ignored_classes=(_arg0); end

    # The ignored instance variables.
    #
    # @return [Array]
    #
    # source://better_errors//lib/better_errors.rb#40
    def ignored_instance_variables; end

    # The ignored instance variables.
    #
    # @return [Array]
    #
    # source://better_errors//lib/better_errors.rb#40
    def ignored_instance_variables=(_arg0); end

    # The logger to use when logging exception details and backtraces. If you
    # are using Better Errors with Rails, you do not need to set this attribute
    # manually. If this attribute is `nil`, nothing will be logged.
    #
    # @return [Logger, nil]
    #
    # source://better_errors//lib/better_errors.rb#30
    def logger; end

    # The logger to use when logging exception details and backtraces. If you
    # are using Better Errors with Rails, you do not need to set this attribute
    # manually. If this attribute is `nil`, nothing will be logged.
    #
    # @return [Logger, nil]
    #
    # source://better_errors//lib/better_errors.rb#30
    def logger=(_arg0); end

    # The maximum variable payload size. If variable.inspect exceeds this,
    # the variable won't be returned.
    #
    # @return int
    #
    # source://better_errors//lib/better_errors.rb#45
    def maximum_variable_inspect_size; end

    # The maximum variable payload size. If variable.inspect exceeds this,
    # the variable won't be returned.
    #
    # @return int
    #
    # source://better_errors//lib/better_errors.rb#45
    def maximum_variable_inspect_size=(_arg0); end

    # Enables experimental Pry support in the inline REPL
    #
    # If you encounter problems while using Pry, *please* file a bug report at
    # https://github.com/BetterErrors/better_errors/issues
    #
    # source://better_errors//lib/better_errors.rb#123
    def use_pry!; end
  end
end

# @private
#
# source://better_errors//lib/better_errors/code_formatter.rb#3
class BetterErrors::CodeFormatter
  # @return [CodeFormatter] a new instance of CodeFormatter
  #
  # source://better_errors//lib/better_errors/code_formatter.rb#9
  def initialize(filename, line, context = T.unsafe(nil)); end

  # Returns the value of attribute context.
  #
  # source://better_errors//lib/better_errors/code_formatter.rb#7
  def context; end

  # source://better_errors//lib/better_errors/code_formatter.rb#27
  def context_lines; end

  # Returns the value of attribute filename.
  #
  # source://better_errors//lib/better_errors/code_formatter.rb#7
  def filename; end

  # Returns the value of attribute line.
  #
  # source://better_errors//lib/better_errors/code_formatter.rb#7
  def line; end

  # source://better_errors//lib/better_errors/code_formatter.rb#21
  def line_range; end

  # source://better_errors//lib/better_errors/code_formatter.rb#15
  def output; end

  private

  # source://better_errors//lib/better_errors/code_formatter.rb#38
  def each_line_of(lines, &blk); end

  # source://better_errors//lib/better_errors/code_formatter.rb#34
  def formatted_code; end

  # source://better_errors//lib/better_errors/code_formatter.rb#44
  def source; end

  # source://better_errors//lib/better_errors/code_formatter.rb#48
  def source_lines; end
end

# source://better_errors//lib/better_errors/code_formatter/html.rb#5
class BetterErrors::CodeFormatter::HTML < ::BetterErrors::CodeFormatter
  # source://better_errors//lib/better_errors/code_formatter/html.rb#24
  def formatted_code; end

  # source://better_errors//lib/better_errors/code_formatter/html.rb#10
  def formatted_lines; end

  # source://better_errors//lib/better_errors/code_formatter/html.rb#17
  def formatted_nums; end

  # source://better_errors//lib/better_errors/code_formatter/html.rb#35
  def highlighted_lines; end

  # source://better_errors//lib/better_errors/code_formatter/html.rb#31
  def rouge_lexer; end

  # source://better_errors//lib/better_errors/code_formatter/html.rb#6
  def source_unavailable; end
end

# source://better_errors//lib/better_errors/code_formatter/text.rb#3
class BetterErrors::CodeFormatter::Text < ::BetterErrors::CodeFormatter
  # source://better_errors//lib/better_errors/code_formatter/text.rb#8
  def formatted_lines; end

  # source://better_errors//lib/better_errors/code_formatter/text.rb#4
  def source_unavailable; end
end

# source://better_errors//lib/better_errors/editor.rb#4
class BetterErrors::Editor
  # @return [Editor] a new instance of Editor
  #
  # source://better_errors//lib/better_errors/editor.rb#69
  def initialize(url_proc); end

  # source://better_errors//lib/better_errors/editor.rb#87
  def scheme; end

  # source://better_errors//lib/better_errors/editor.rb#73
  def url(raw_path, line); end

  private

  # source://better_errors//lib/better_errors/editor.rb#99
  def host_path; end

  # Returns the value of attribute url_proc.
  #
  # source://better_errors//lib/better_errors/editor.rb#93
  def url_proc; end

  # source://better_errors//lib/better_errors/editor.rb#95
  def virtual_path; end

  class << self
    # Automatically sniffs a default editor preset based on
    # environment variables.
    #
    # @return [Symbol]
    #
    # source://better_errors//lib/better_errors/editor.rb#31
    def default_editor; end

    # source://better_errors//lib/better_errors/editor.rb#52
    def editor_from_command(editor_command); end

    # source://better_errors//lib/better_errors/editor.rb#37
    def editor_from_environment_editor; end

    # source://better_errors//lib/better_errors/editor.rb#57
    def editor_from_environment_formatting_string; end

    # source://better_errors//lib/better_errors/editor.rb#63
    def editor_from_symbol(symbol); end

    # source://better_errors//lib/better_errors/editor.rb#17
    def for_formatting_string(formatting_string); end

    # source://better_errors//lib/better_errors/editor.rb#23
    def for_proc(url_proc); end
  end
end

# source://better_errors//lib/better_errors/editor.rb#5
BetterErrors::Editor::KNOWN_EDITORS = T.let(T.unsafe(nil), Array)

# @private
#
# source://better_errors//lib/better_errors/error_page.rb#9
class BetterErrors::ErrorPage
  # @return [ErrorPage] a new instance of ErrorPage
  #
  # source://better_errors//lib/better_errors/error_page.rb#31
  def initialize(exception, env); end

  # source://better_errors//lib/better_errors/error_page.rb#94
  def action_dispatch_action_endpoint; end

  # source://better_errors//lib/better_errors/error_page.rb#88
  def active_support_actions; end

  # source://better_errors//lib/better_errors/error_page.rb#100
  def application_frames; end

  # source://better_errors//lib/better_errors/error_page.rb#72
  def backtrace_frames; end

  # source://better_errors//lib/better_errors/error_page.rb#59
  def do_eval(opts); end

  # source://better_errors//lib/better_errors/error_page.rb#52
  def do_variables(opts); end

  # Returns the value of attribute env.
  #
  # source://better_errors//lib/better_errors/error_page.rb#29
  def env; end

  # Returns the value of attribute exception.
  #
  # source://better_errors//lib/better_errors/error_page.rb#29
  def exception; end

  # source://better_errors//lib/better_errors/error_page.rb#84
  def exception_hint; end

  # source://better_errors//lib/better_errors/error_page.rb#80
  def exception_message; end

  # source://better_errors//lib/better_errors/error_page.rb#76
  def exception_type; end

  # source://better_errors//lib/better_errors/error_page.rb#104
  def first_frame; end

  # source://better_errors//lib/better_errors/error_page.rb#38
  def id; end

  # source://better_errors//lib/better_errors/error_page.rb#42
  def render_main(csrf_token, csp_nonce); end

  # source://better_errors//lib/better_errors/error_page.rb#48
  def render_text; end

  # Returns the value of attribute repls.
  #
  # source://better_errors//lib/better_errors/error_page.rb#29
  def repls; end

  private

  # source://better_errors//lib/better_errors/error_page.rb#110
  def editor_url(frame); end

  # source://better_errors//lib/better_errors/error_page.rb#158
  def eval_and_respond(index, code); end

  # source://better_errors//lib/better_errors/error_page.rb#114
  def rack_session; end

  # source://better_errors//lib/better_errors/error_page.rb#118
  def rails_params; end

  # source://better_errors//lib/better_errors/error_page.rb#126
  def request_path; end

  # source://better_errors//lib/better_errors/error_page.rb#138
  def text_heading(char, str); end

  # source://better_errors//lib/better_errors/error_page.rb#122
  def uri_prefix; end

  class << self
    # source://better_errors//lib/better_errors/error_page.rb#130
    def html_formatted_code_block(frame); end

    # source://better_errors//lib/better_errors/error_page.rb#142
    def inspect_value(obj); end

    # source://better_errors//lib/better_errors/error_page.rb#20
    def render_template(template_name, locals); end

    # source://better_errors//lib/better_errors/error_page.rb#16
    def template(template_name); end

    # source://better_errors//lib/better_errors/error_page.rb#12
    def template_path(template_name); end

    # source://better_errors//lib/better_errors/error_page.rb#134
    def text_formatted_code_block(frame); end
  end
end

# source://better_errors//lib/better_errors/error_page.rb#10
class BetterErrors::ErrorPage::VariableInfo < ::Struct
  # Returns the value of attribute editor_url
  #
  # @return [Object] the current value of editor_url
  def editor_url; end

  # Sets the attribute editor_url
  #
  # @param value [Object] the value to set the attribute editor_url to.
  # @return [Object] the newly set value
  def editor_url=(_); end

  # Returns the value of attribute frame
  #
  # @return [Object] the current value of frame
  def frame; end

  # Sets the attribute frame
  #
  # @param value [Object] the value to set the attribute frame to.
  # @return [Object] the newly set value
  def frame=(_); end

  # Returns the value of attribute rack_session
  #
  # @return [Object] the current value of rack_session
  def rack_session; end

  # Sets the attribute rack_session
  #
  # @param value [Object] the value to set the attribute rack_session to.
  # @return [Object] the newly set value
  def rack_session=(_); end

  # Returns the value of attribute rails_params
  #
  # @return [Object] the current value of rails_params
  def rails_params; end

  # Sets the attribute rails_params
  #
  # @param value [Object] the value to set the attribute rails_params to.
  # @return [Object] the newly set value
  def rails_params=(_); end

  # Returns the value of attribute start_time
  #
  # @return [Object] the current value of start_time
  def start_time; end

  # Sets the attribute start_time
  #
  # @param value [Object] the value to set the attribute start_time to.
  # @return [Object] the newly set value
  def start_time=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

# @private
#
# source://better_errors//lib/better_errors/error_page_style.rb#3
module BetterErrors::ErrorPageStyle
  class << self
    # source://better_errors//lib/better_errors/error_page_style.rb#4
    def compiled_css(for_deployment = T.unsafe(nil)); end

    # source://better_errors//lib/better_errors/error_page_style.rb#33
    def style_tag(csp_nonce); end
  end
end

# source://better_errors//lib/better_errors/exception_extension.rb#2
module BetterErrors::ExceptionExtension
  # source://better_errors//lib/better_errors/exception_extension.rb#13
  def __better_errors_bindings_stack; end

  # source://better_errors//lib/better_errors/exception_extension.rb#5
  def set_backtrace(*_arg0); end
end

# source://better_errors//lib/better_errors/exception_hint.rb#2
class BetterErrors::ExceptionHint
  # @return [ExceptionHint] a new instance of ExceptionHint
  #
  # source://better_errors//lib/better_errors/exception_hint.rb#3
  def initialize(exception); end

  # source://better_errors//lib/better_errors/exception_hint.rb#7
  def hint; end

  private

  # Returns the value of attribute exception.
  #
  # source://better_errors//lib/better_errors/exception_hint.rb#27
  def exception; end
end

# source://better_errors//lib/better_errors/inspectable_value.rb#7
class BetterErrors::InspectableValue
  # @return [InspectableValue] a new instance of InspectableValue
  #
  # source://better_errors//lib/better_errors/inspectable_value.rb#8
  def initialize(value); end

  # @raise [ValueLargerThanConfiguredMaximum]
  #
  # source://better_errors//lib/better_errors/inspectable_value.rb#12
  def to_html; end

  private

  # Returns the value of attribute original_value.
  #
  # source://better_errors//lib/better_errors/inspectable_value.rb#19
  def original_value; end

  # source://better_errors//lib/better_errors/inspectable_value.rb#25
  def value; end

  # source://better_errors//lib/better_errors/inspectable_value.rb#21
  def value_as_html; end

  # @return [Boolean]
  #
  # source://better_errors//lib/better_errors/inspectable_value.rb#35
  def value_small_enough_to_inspect?; end
end

# Better Errors' error handling middleware. Including this in your middleware
# stack will show a Better Errors error page for exceptions raised below this
# middleware.
#
# If you are using Ruby on Rails, you do not need to manually insert this
# middleware into your middleware stack.
#
# @example Sinatra
#   require "better_errors"
#
#   if development?
#   use BetterErrors::Middleware
#   end
# @example Rack
#   require "better_errors"
#   if ENV["RACK_ENV"] == "development"
#   use BetterErrors::Middleware
#   end
#
# source://better_errors//lib/better_errors/middleware.rb#28
class BetterErrors::Middleware
  # A new instance of BetterErrors::Middleware
  #
  # @param app The Rack app/middleware to wrap with Better Errors
  # @param handler The error handler to use.
  # @return [Middleware] a new instance of Middleware
  #
  # source://better_errors//lib/better_errors/middleware.rb#49
  def initialize(app, handler = T.unsafe(nil)); end

  # Calls the Better Errors middleware
  #
  # @param env [Hash]
  # @return [Array]
  #
  # source://better_errors//lib/better_errors/middleware.rb#58
  def call(env); end

  private

  # @return [Boolean]
  #
  # source://better_errors//lib/better_errors/middleware.rb#68
  def allow_ip?(env); end

  # source://better_errors//lib/better_errors/middleware.rb#156
  def backtrace_frames; end

  # source://better_errors//lib/better_errors/middleware.rb#75
  def better_errors_call(env); end

  # source://better_errors//lib/better_errors/middleware.rb#164
  def internal_call(env, id, method); end

  # source://better_errors//lib/better_errors/middleware.rb#215
  def invalid_csrf_token_json_response; end

  # source://better_errors//lib/better_errors/middleware.rb#207
  def invalid_error_json_response; end

  # source://better_errors//lib/better_errors/middleware.rb#147
  def log_exception; end

  # source://better_errors//lib/better_errors/middleware.rb#187
  def no_errors_json_response; end

  # source://better_errors//lib/better_errors/middleware.rb#182
  def no_errors_page; end

  # source://better_errors//lib/better_errors/middleware.rb#230
  def not_acceptable_json_response; end

  # source://better_errors//lib/better_errors/middleware.rb#223
  def not_found_json_response; end

  # source://better_errors//lib/better_errors/middleware.rb#86
  def protected_app_call(env); end

  # source://better_errors//lib/better_errors/middleware.rb#94
  def show_error_page(env, exception = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://better_errors//lib/better_errors/middleware.rb#142
  def text?(env); end

  class << self
    # Adds an address to the set of IP addresses allowed to access Better
    # Errors.
    #
    # source://better_errors//lib/better_errors/middleware.rb#36
    def allow_ip!(addr); end
  end
end

# The set of IP addresses that are allowed to access Better Errors.
#
# Set to `{ "127.0.0.1/8", "::1/128" }` by default.
#
# source://better_errors//lib/better_errors/middleware.rb#32
BetterErrors::Middleware::ALLOWED_IPS = T.let(T.unsafe(nil), Set)

# source://better_errors//lib/better_errors/middleware.rb#43
BetterErrors::Middleware::CSRF_TOKEN_COOKIE_NAME = T.let(T.unsafe(nil), String)

# @private
#
# source://better_errors//lib/better_errors/repl.rb#3
module BetterErrors::REPL
  class << self
    # source://better_errors//lib/better_errors/repl.rb#17
    def detect; end

    # source://better_errors//lib/better_errors/repl.rb#9
    def provider; end

    # source://better_errors//lib/better_errors/repl.rb#13
    def provider=(prov); end

    # source://better_errors//lib/better_errors/repl.rb#23
    def test_provider(provider); end
  end
end

# source://better_errors//lib/better_errors/repl.rb#4
BetterErrors::REPL::PROVIDERS = T.let(T.unsafe(nil), Array)

# @private
#
# source://better_errors//lib/better_errors/rails.rb#3
class BetterErrors::Railtie < ::Rails::Railtie
  # source://better_errors//lib/better_errors/rails.rb#24
  def app; end

  # source://better_errors//lib/better_errors/rails.rb#12
  def insert_middleware; end

  # @return [Boolean]
  #
  # source://better_errors//lib/better_errors/rails.rb#20
  def use_better_errors?; end
end

# source://better_errors//lib/better_errors/raised_exception.rb#5
class BetterErrors::RaisedException
  # @return [RaisedException] a new instance of RaisedException
  #
  # source://better_errors//lib/better_errors/raised_exception.rb#8
  def initialize(exception); end

  # Returns the value of attribute backtrace.
  #
  # source://better_errors//lib/better_errors/raised_exception.rb#6
  def backtrace; end

  # Returns the value of attribute exception.
  #
  # source://better_errors//lib/better_errors/raised_exception.rb#6
  def exception; end

  # Returns the value of attribute hint.
  #
  # source://better_errors//lib/better_errors/raised_exception.rb#6
  def hint; end

  # Returns the value of attribute message.
  #
  # source://better_errors//lib/better_errors/raised_exception.rb#6
  def message; end

  # source://better_errors//lib/better_errors/raised_exception.rb#32
  def type; end

  private

  # @return [Boolean]
  #
  # source://better_errors//lib/better_errors/raised_exception.rb#37
  def has_bindings?; end

  # source://better_errors//lib/better_errors/raised_exception.rb#71
  def massage_syntax_error; end

  # source://better_errors//lib/better_errors/raised_exception.rb#41
  def setup_backtrace; end

  # source://better_errors//lib/better_errors/raised_exception.rb#63
  def setup_backtrace_from_backtrace; end

  # source://better_errors//lib/better_errors/raised_exception.rb#49
  def setup_backtrace_from_bindings; end

  # source://better_errors//lib/better_errors/raised_exception.rb#85
  def setup_hint; end
end

# @private
#
# source://better_errors//lib/better_errors/stack_frame.rb#5
class BetterErrors::StackFrame
  # @return [StackFrame] a new instance of StackFrame
  #
  # source://better_errors//lib/better_errors/stack_frame.rb#12
  def initialize(filename, line, name, frame_binding = T.unsafe(nil)); end

  # @return [Boolean]
  #
  # source://better_errors//lib/better_errors/stack_frame.rb#21
  def application?; end

  # source://better_errors//lib/better_errors/stack_frame.rb#27
  def application_path; end

  # source://better_errors//lib/better_errors/stack_frame.rb#43
  def class_name; end

  # source://better_errors//lib/better_errors/stack_frame.rb#51
  def context; end

  # Returns the value of attribute filename.
  #
  # source://better_errors//lib/better_errors/stack_frame.rb#10
  def filename; end

  # Returns the value of attribute frame_binding.
  #
  # source://better_errors//lib/better_errors/stack_frame.rb#10
  def frame_binding; end

  # @return [Boolean]
  #
  # source://better_errors//lib/better_errors/stack_frame.rb#31
  def gem?; end

  # source://better_errors//lib/better_errors/stack_frame.rb#35
  def gem_path; end

  # source://better_errors//lib/better_errors/stack_frame.rb#92
  def instance_variables; end

  # Returns the value of attribute line.
  #
  # source://better_errors//lib/better_errors/stack_frame.rb#10
  def line; end

  # source://better_errors//lib/better_errors/stack_frame.rb#86
  def local_variable(name); end

  # source://better_errors//lib/better_errors/stack_frame.rb#69
  def local_variables; end

  # source://better_errors//lib/better_errors/stack_frame.rb#47
  def method_name; end

  # Returns the value of attribute name.
  #
  # source://better_errors//lib/better_errors/stack_frame.rb#10
  def name; end

  # source://better_errors//lib/better_errors/stack_frame.rb#61
  def pretty_path; end

  # source://better_errors//lib/better_errors/stack_frame.rb#106
  def to_s; end

  # source://better_errors//lib/better_errors/stack_frame.rb#99
  def visible_instance_variables; end

  private

  # source://better_errors//lib/better_errors/stack_frame.rb#132
  def eval_local_variable(name); end

  # source://better_errors//lib/better_errors/stack_frame.rb#126
  def get_local_variable(name); end

  # source://better_errors//lib/better_errors/stack_frame.rb#111
  def set_pretty_method_name; end

  class << self
    # source://better_errors//lib/better_errors/stack_frame.rb#6
    def from_exception(exception); end
  end
end

# This is changed by CI before building a gem for release, but is not committed.
#
# source://better_errors//lib/better_errors/version.rb#3
BetterErrors::VERSION = T.let(T.unsafe(nil), String)

# source://better_errors//lib/better_errors/inspectable_value.rb#5
class BetterErrors::ValueLargerThanConfiguredMaximum < ::StandardError; end

class Exception
  include ::BetterErrors::ExceptionExtension
end
