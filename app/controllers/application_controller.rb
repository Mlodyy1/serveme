# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include ApplicationHelper

  protect_from_forgery
  before_action :authenticate_user!
  before_action :set_time_zone

  def set_time_zone
    set_time_zone_from_current_user || set_time_zone_from_cookie || set_default_time_zone
  end

  private

  def set_time_zone_from_current_user
    if current_user && current_user.time_zone.present?
      Time.zone = current_user.time_zone
    end
  end

  def set_time_zone_from_cookie
    begin
      Time.zone = time_zone_from_cookie
      if current_user
        current_user&.update(time_zone: time_zone_from_cookie)
      end
    rescue ArgumentError
      set_default_time_zone
    end
  end

  def set_default_time_zone
    Time.zone = Rails.configuration.time_zone
  end

  def time_zone_from_cookie
    cookies[:time_zone]
  end
  helper_method :time_zone_from_cookie

  def current_admin
    if @current_admin.nil?
      @current_admin = begin
                         if current_user&.admin?
                           current_user
                         else
                           false
                         end
                       end
    end
    @current_admin
  end
  helper_method :current_admin

  def current_streamer
    if @current_streamer.nil?
      @current_streamer = begin
                             if current_user&.streamer?
                               current_user
                             else
                               false
                             end
                           end
    end
    @current_streamer
  end
  helper_method :current_streamer

  def require_admin
    redirect_to root_path unless current_admin
  end

  def require_admin_or_streamer
    redirect_to root_path unless current_admin || current_streamer
  end

  def require_donator
    unless current_user&.donator?
      flash[:alert] = 'Only donators can do that...'
      redirect_to root_path
    end
  end

  protected

  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to '/users/auth/steam'
    end
  end
end
