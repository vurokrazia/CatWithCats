import consumer from "./consumer"
import RoomGame from '../packs/room_game'
function RoomGameChannel() {
  this.room_game = new RoomGame(this)
  this.key        = "RoomGame"
  this.channel = consumer.subscriptions.create("RoomGameChannel", {
      connected() {
        // Called when the subscription is ready for use on the server
      },
    
      disconnected() {
        // Called when the subscription has been terminated by the server
      },
    
      received(data) {
        //  this.room_game
        // Called when there's incoming data on the websocket for this channel
      }
    });
    this.send_movement = function (user_id,column) {
      this.channel.send({ user_id: user_id,column:column })
    }
  }
  

export default RoomGameChannel;