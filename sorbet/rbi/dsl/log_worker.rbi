# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `LogWorker`.
# Please instead update this file by running `bin/tapioca dsl LogWorker`.


class LogWorker
  class << self
    sig { params(raw_line: T.untyped).returns(String) }
    def perform_async(raw_line); end

    sig { params(interval: T.any(DateTime, Time), raw_line: T.untyped).returns(String) }
    def perform_at(interval, raw_line); end

    sig { params(interval: Numeric, raw_line: T.untyped).returns(String) }
    def perform_in(interval, raw_line); end
  end
end
