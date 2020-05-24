import consumer from "./consumer"
import User from "../packs/user"
const user = new User()
const channel_notifications = consumer.subscriptions.create("WebNotificationsChannel", {
  connected() {
    console.log("connected");
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    user.set_params(data["user"])
    console.log(user);
    alert(data["message"])
  }
});
export {  user, channel_notifications } 