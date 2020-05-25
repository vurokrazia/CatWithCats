class RoomGameChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    #binding.pry
    game_root = self.current_user.game_root
    stream_from "room_games_#{game_root.id}"
    #ActionCable.server.broadcast "room_games_#{game_root.id}", { game_root: game_root.to_json }
    #"room_games_#{self.current_user}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    puts "|| RoomGameChanel #{data} ||"
  end
end
