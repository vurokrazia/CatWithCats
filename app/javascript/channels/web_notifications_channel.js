import consumer from "./consumer"
import User from "../packs/user"
function WebNotificationsChannel () {
  this.user = new User(this);
  this.channel = function(){
    var _this = this
    return consumer.subscriptions.create("WebNotificationsChannel", {
      connected() {
        console.log("channel_notifications","connected");
        // Called when the subscription is ready for use on the server
      },
    
      disconnected() {
        // Called when the subscription has been terminated by the server
      },
    
      received(data) {
        _this.user.set_params(data["user"],"w");
        _this.user.grettings()
      }
    });
  }
}
export default WebNotificationsChannel