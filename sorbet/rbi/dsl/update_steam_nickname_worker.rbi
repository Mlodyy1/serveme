# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `UpdateSteamNicknameWorker`.
# Please instead update this file by running `bin/tapioca dsl UpdateSteamNicknameWorker`.


class UpdateSteamNicknameWorker
  class << self
    sig { params(steam_uid: T.untyped).returns(String) }
    def perform_async(steam_uid); end

    sig { params(interval: T.any(DateTime, Time), steam_uid: T.untyped).returns(String) }
    def perform_at(interval, steam_uid); end

    sig { params(interval: Numeric, steam_uid: T.untyped).returns(String) }
    def perform_in(interval, steam_uid); end
  end
end
