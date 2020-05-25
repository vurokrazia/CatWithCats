import consumer from "./consumer"
function RoomGame() {
  this.id = 0;
  this.email = "";
  this.created_at = ""
  this.updated_at = ""
  this.channel = null
  this.key = "RoomGame"
};
RoomGame.prototype.set_params = function(params){
  this.id = params["id"]
}
RoomGame.prototype.active_channel = function() {
  var _this = this;
  this.channel = consumer.subscriptions.create("RoomGameChannel", {
    connected() {
      console.log(_this.key,"connected");
      // Called when the subscription is ready for use on the server
    },
  
    disconnected() {
      // Called when the subscription has been terminated by the server
    },
  
    received(data) {
      console.log(this.key,data);
      // Called when there's incoming data on the websocket for this channel
    }
  });
}
export default RoomGame;