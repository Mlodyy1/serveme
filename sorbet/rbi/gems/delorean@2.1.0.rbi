# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `delorean` gem.
# Please instead update this file by running `bin/tapioca gem delorean`.

# source://delorean//lib/flux_capacitor.rb#1
module Delorean
  include ::Delorean::FluxCapacitor
  extend ::Delorean::FluxCapacitor
  extend ::Delorean
end

# source://delorean//lib/flux_capacitor.rb#2
module Delorean::FluxCapacitor
  # source://delorean//lib/flux_capacitor.rb#13
  def back_to_1985; end

  # source://delorean//lib/flux_capacitor.rb#13
  def back_to_the_present; end

  # source://delorean//lib/flux_capacitor.rb#18
  def jump(seconds); end

  # source://delorean//lib/flux_capacitor.rb#28
  def now; end

  # source://delorean//lib/flux_capacitor.rb#3
  def time_travel_to(time, options = T.unsafe(nil)); end

  private

  # source://delorean//lib/flux_capacitor.rb#42
  def mock_current_time(time, options = T.unsafe(nil)); end

  # source://delorean//lib/flux_capacitor.rb#38
  def reset; end

  # source://delorean//lib/flux_capacitor.rb#49
  def restore_previous_time; end

  # source://delorean//lib/flux_capacitor.rb#34
  def time_travel_offsets; end
end
