function User() {
  this.id = 0;
  this.email = "";
  this.created_at = ""
  this.updated_at = ""
  this.message = ""
};
User.prototype.set_params = function(user,message){
  this.id = user["id"]
  this.email = user["email"]
  this.created_at = user["created_at"]
  this.updated_at = user["updated_at"]
  this.message = message
}
User.prototype.grettings = function(){
  alert(this.message)
}
export default User;