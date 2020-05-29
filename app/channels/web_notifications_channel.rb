class WebNotificationsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    #stream_from "web_notifications_channel"
    stream_from "web_notifications_channel_#{self.current_user.id}"
    ActionCable.server.broadcast "user_online_channel", { key: "user_online", user: self.current_user }
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    #binding.pry
    #stream_from "clean sesion"
    self.current_user.update(available:false)
    ActionCable.server.broadcast "user_online_channel", { key: "user_online", user: self.current_user }
  end

  def receive(data)
    puts "||  #{data} ||"
    #ActionCable.server.broadcast("chat_#{params[:room]}", data)
  end
end
