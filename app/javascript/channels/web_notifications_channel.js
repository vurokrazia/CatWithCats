import consumer from "./consumer"
import User from "../packs/user"
import RoomGame from '../channels/room_game_channel'
const user = new User()
const room_game = new RoomGame()

const channel_notifications = consumer.subscriptions.create("WebNotificationsChannel", {
  connected() {
    console.log("channel_notifications","connected");
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    user.set_params(data["user"],data["message"])
    user.grettings()
    room_game.set_params(data["game_root"])
    room_game.active_channel()
    room_game.channel.send({ msg: "success room message" })
  }
});

function RoomChannel (){}
RoomChannel.prototype.send_data = function (information) {
  
}

export {  user, channel_notifications, RoomChannel } 