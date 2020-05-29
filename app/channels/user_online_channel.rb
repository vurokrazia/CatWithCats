class UserOnlineChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "user_online_channel"
    ActionCable.server.broadcast "user_online_channel", { key: "user_online", user: self.current_user }
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    ActionCable.server.broadcast "user_online_channel", { key: "user_offline", user: self.current_user, message: "Logout #{self.current_user.email}"}
  end
end
