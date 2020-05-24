function User() {
  this.id = 0;
  this.email = "";
  this.created_at = ""
  this.updated_at = ""
};
User.prototype.set_params = function(params){
  this.email = params["email"]
}
export default User;