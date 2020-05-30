import consumer from "./consumer"
import UsersOnline from "../packs/users_online"
const UserOnlineChannel = function(){
  this.users_online = new UsersOnline(this)
  this.have_list = function() {
    return this.find_element_list().children != undefined
  }
  this.delete_users_offline = function () {
    if (this.have_list()) 
      this.delete_user_li()
  }
  this.delete_user_li = function() {
    var array = this.find_element_list().childNodes
    for (let index = 1; index < array.length; index++) {
      var element = array[index]
      //if (element.classList[0] == "user_"+element.id)
        element.remove() 
    }
  }
  this.find_element_list = function() {
    return document.getElementById("user-list-online")
  }
  this.display_users_online = function(){
    var ul = this.find_element_list()
    this.users_online.getUser().forEach(user => {
      var li = document.createElement("li")
      li.innerHTML = user.email
      li.classList.add("user_"+user.id)
      li.classList.add("users")
      li.classList.add("list-group-item")
      ul.appendChild(li)
    });
  }
  this.refresh_list = function() {
    var array = document.getElementsByClassName("users")
    for (var index = 0; index < array.length; index++) {
      const element = array[index];
      var id = array[index].classList[0].replace("user_","")
      var email = element.textContent.replace(/\n/g, '').replace(/ /g,'')
      var user =  {id:parseInt(id), email:email};
      this.users_online.add_user(user) 
    }
    console.log("refresh_list",this.users_online.users);
  }
  this.channel = function(){
    var _this = this
    return consumer.subscriptions.create("UserOnlineChannel", {
      connected() {
        // Called when the subscription is ready for use on the server
      },

      disconnected() {
        // Called when the subscription has been terminated by the server
      },

      received(data) {
        switch (data['key']) {
          case 'user_online':
            _this.users_online.add_user(data['user'])
            _this.delete_users_offline()
            _this.display_users_online()
            break;
          case 'user_offline':
            _this.users_online.remove_user(data['user'])
            _this.delete_users_offline()
            //_this.display_users_online()
            break;
          default:
            break;
        }
        // Called when there's incoming data on the websocket for this channel
      }
    
    });
  }
}
export default UserOnlineChannel