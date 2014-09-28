class LogWorker
  include Sidekiq::Worker

  attr_accessor :raw_line, :line, :event, :reservation_id, :message

  def perform(raw_line)
    @raw_line         = raw_line
    if reservation
      handle_event
    end
  end

  def handle_event
    if event.is_a?(TF2LineParser::Events::Say)
      @message = event.message
      handle_message
    end
  end

  def handle_message
    action = action_by_reserver || action_for_message_said_by_anyone
    send(action) if action
  end

  def handle_end
    Rails.logger.info "Ending #{reservation} from chat"
    reservation.server.rcon_say "Ending your reservation..."
    ReservationWorker.perform_async(reservation.id, "end")
  end

  def handle_extend
    if reservation.extend!
      Rails.logger.info "Extended #{reservation} from chat"
      reservation.server.rcon_say "Extended your reservation by #{(reserver.reservation_extension_time / 60.0).round} minutes"
    else
      Rails.logger.info "Couldn't extend #{reservation} from chat"
      reservation.server.rcon_say "Couldn't extend your reservation: you can only extend when there's less than 1 hour left and no one else has booked the server."
    end
  end

  def handle_rcon
    rcon_command = message.split(" ")[1..-1].join(" ")
    if rcon_command
      Rails.logger.info "Sending rcon command #{rcon_command} from chat for reservation #{reservation}"
      reservation.server.rcon_exec(rcon_command)
    end
  end

  def handle_rate
    RateWorker.perform_async(reservation.id, sayer_steam_uid, event.player.name, message)
  end

  def action_for_message_said_by_reserver
    case message
    when /!end.*/
      :handle_end
    when /!extend.*/
      :handle_extend
    when /!rcon .*/
      :handle_rcon
    end
  end

  def action_for_message_said_by_anyone
    case message
    when /!rate.*/
      :handle_rate
    end
  end

  def said_by_reserver?
    event.player.steam_id == reserver_steam_id
  end

  def action_by_reserver
    said_by_reserver? && action_for_message_said_by_reserver
  end

  def reserver
    @reserver ||= reservation.user
  end

  def reserver_steam_id
    @reserver_steam_id ||= SteamCondenser::Community::SteamId.community_id_to_steam_id2(reserver.uid.to_i)
  end

  def sayer_steam_uid
    @sayer_steam_uid ||= SteamCondenser::Community::SteamId.steam_id_to_community_id(event.player.steam_id)
  end

  def event
    @event ||= TF2LineParser::Parser.new(line).parse
  end

  def reservation
    if reservation_id
      @reservation ||= Reservation.includes(:user).find(reservation_id)
    end
  end

  def reservation_id
    matches = raw_line.match('(?\'secret\'\d*)(?\'line\'.*)')
    if matches
      if matches[:line]
        @line = matches[:line]
      end
      if matches[:secret].present?
        Rails.cache.fetch("reservation_secret_#{matches[:secret]}", expires_in: 1.minute) do
          @reservation_id = Reservation.where(:logsecret => matches[:secret]).last.try(:id)
        end
      end
    end
  end

end
