# typed: false

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `american_date` gem.
# Please instead update this file by running `bin/tapioca gem american_date`.


class Date
  include ::Comparable

  class << self
    # source://american_date//lib/american_date.rb#31
    def _parse(string, comp = T.unsafe(nil), limit: T.unsafe(nil)); end

    # source://american_date//lib/american_date.rb#52
    def parse(string, comp = T.unsafe(nil), start = T.unsafe(nil), limit: T.unsafe(nil)); end

    private

    # source://american_date//lib/american_date.rb#69
    def convert_american_to_iso(string); end
  end
end

# source://american_date//lib/american_date.rb#18
Date::AMERICAN_DATE_RE = T.let(T.unsafe(nil), Regexp)