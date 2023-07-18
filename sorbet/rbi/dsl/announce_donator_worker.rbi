# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `AnnounceDonatorWorker`.
# Please instead update this file by running `bin/tapioca dsl AnnounceDonatorWorker`.

class AnnounceDonatorWorker
  class << self
    sig { params(nickname: T.untyped, product_name: T.untyped).returns(String) }
    def perform_async(nickname, product_name); end

    sig { params(interval: T.any(DateTime, Time), nickname: T.untyped, product_name: T.untyped).returns(String) }
    def perform_at(interval, nickname, product_name); end

    sig { params(interval: Numeric, nickname: T.untyped, product_name: T.untyped).returns(String) }
    def perform_in(interval, nickname, product_name); end
  end
end