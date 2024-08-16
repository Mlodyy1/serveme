# typed: true
# frozen_string_literal: true

class Etf2lApi
  def self.profile(steam_uid)
    cached_profile_response(steam_uid) || fetch_profile(steam_uid)
  end

  def self.cached_profile_response(steam_uid)
    Rails.cache.read("etf2l_profile_#{steam_uid}")
  end

  def self.fetch_profile(steam_uid)
    response = etf2l_connection.get("player/#{steam_uid}")
    return unless response.success?

    Rails.cache.write("etf2l_profile_#{steam_uid}", response.body, expires_in: 1.day)

    response.body
  end

  def self.etf2l_connection
    Faraday.new(request: { open_timeout: 5, timeout: 5 }, url: 'https://api-v2.etf2l.org/')
  end
end
