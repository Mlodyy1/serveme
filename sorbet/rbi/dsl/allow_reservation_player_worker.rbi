# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `AllowReservationPlayerWorker`.
# Please instead update this file by running `bin/tapioca dsl AllowReservationPlayerWorker`.

class AllowReservationPlayerWorker
  class << self
    sig { params(reservation_player_id: T.untyped).returns(String) }
    def perform_async(reservation_player_id); end

    sig { params(interval: T.any(DateTime, Time), reservation_player_id: T.untyped).returns(String) }
    def perform_at(interval, reservation_player_id); end

    sig { params(interval: Numeric, reservation_player_id: T.untyped).returns(String) }
    def perform_in(interval, reservation_player_id); end
  end
end
