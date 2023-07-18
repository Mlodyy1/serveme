# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dante` gem.
# Please instead update this file by running `bin/tapioca gem dante`.

# Dante.run("process-name") do
#     begin
#       # ...something here
#     rescue Interrupt
#       # ...shutdown here
#     end
#   end
#
# source://dante//lib/dante/version.rb#1
module Dante
  class << self
    # Forks a process and handles option parsing and start/stopping.
    #
    # @example
    #   Dante.run("process-name") { Server.run! }
    #
    # source://dante//lib/dante.rb#23
    def run(name, options = T.unsafe(nil), &blk); end
  end
end

# source://dante//lib/dante/runner.rb#18
class Dante::Runner
  # @return [Runner] a new instance of Runner
  #
  # source://dante//lib/dante/runner.rb#29
  def initialize(name, defaults = T.unsafe(nil), &block); end

  # Returns running for the daemonized process
  # self.daemon_running?
  #
  # @return [Boolean]
  #
  # source://dante//lib/dante/runner.rb#158
  def daemon_running?; end

  # Returns true if process is not running
  #
  # @return [Boolean]
  #
  # source://dante//lib/dante/runner.rb#152
  def daemon_stopped?; end

  # source://dante//lib/dante/runner.rb#78
  def daemonize; end

  # Returns the value of attribute description.
  #
  # source://dante//lib/dante/runner.rb#21
  def description; end

  # Sets the attribute description
  #
  # @param value the value to set the attribute description to.
  #
  # source://dante//lib/dante/runner.rb#21
  def description=(_arg0); end

  # Executes the runner based on options
  #
  # source://dante//lib/dante/runner.rb#49
  def execute(opts = T.unsafe(nil), &block); end

  # source://dante//lib/dante/runner.rb#142
  def interrupt; end

  # Returns the value of attribute name.
  #
  # source://dante//lib/dante/runner.rb#21
  def name; end

  # Sets the attribute name
  #
  # @param value the value to set the attribute name to.
  #
  # source://dante//lib/dante/runner.rb#21
  def name=(_arg0); end

  # Returns the value of attribute options.
  #
  # source://dante//lib/dante/runner.rb#21
  def options; end

  # Sets the attribute options
  #
  # @param value the value to set the attribute options to.
  #
  # source://dante//lib/dante/runner.rb#21
  def options=(_arg0); end

  # source://dante//lib/dante/runner.rb#137
  def restart; end

  # source://dante//lib/dante/runner.rb#106
  def start; end

  # Stops a daemonized process
  #
  # source://dante//lib/dante/runner.rb#127
  def stop(kill_arg = T.unsafe(nil)); end

  # Returns the value of attribute verify_options_hook.
  #
  # source://dante//lib/dante/runner.rb#21
  def verify_options_hook; end

  # Sets the attribute verify_options_hook
  #
  # @param value the value to set the attribute verify_options_hook to.
  #
  # source://dante//lib/dante/runner.rb#21
  def verify_options_hook=(_arg0); end

  # Accepts options for the process
  #
  # source://dante//lib/dante/runner.rb#42
  def with_options(&block); end

  protected

  # source://dante//lib/dante/runner.rb#221
  def kill_pid(k = T.unsafe(nil)); end

  # source://dante//lib/dante/runner.rb#270
  def log(message); end

  # source://dante//lib/dante/runner.rb#168
  def parse_options; end

  # Redirect output based on log settings (reopens stdout/stderr to specified logfile)
  # If log_path is nil, redirect to /dev/null to quiet output
  #
  # source://dante//lib/dante/runner.rb#236
  def redirect_output!; end

  # source://dante//lib/dante/runner.rb#216
  def store_pid(pid); end

  # Runs until the block condition is met or the timeout_seconds is exceeded
  # until_true(10) { ...return_condition... }
  #
  # source://dante//lib/dante/runner.rb#261
  def until_true(timeout_seconds, interval = T.unsafe(nil), &block); end

  class << self
    # source://dante//lib/dante/runner.rb#24
    def run(*args, &block); end
  end
end

# source://dante//lib/dante/runner.rb#19
Dante::Runner::MAX_START_TRIES = T.let(T.unsafe(nil), Integer)

# source://dante//lib/dante/version.rb#2
Dante::VERSION = T.let(T.unsafe(nil), String)