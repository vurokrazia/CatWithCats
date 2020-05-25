class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "web_notifications_channel"
    ActionCable.server.broadcast 'web_notifications_channel', { user: self.current_user, game_root: self.current_user.game_root, message: "Welcome #{self.current_user.email}"}
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stream_from "clean sesion"
  end

  def receive(data)
    puts "||  #{data} ||"
    #ActionCable.server.broadcast("chat_#{params[:room]}", data)
  end
end
