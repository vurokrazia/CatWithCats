function UsersOnline () {
  this.users = []
}
UsersOnline.prototype.user_uniq = function(user){
  var u = this.users.find(us => us.id == user.id)
  if(u){
    console.log("user_uniq",u.id,u.email);
    console.log("user_uniq",user.id,user.email);
    console.log("user_uniq",u.id , user.id, u.id != user.id);
    return u.id != user.id
  }
  else 
    return true
}
UsersOnline.prototype.add_user = function(user) {
  if(this.user_uniq(user)){
    console.log("add_user",user.id);
    this.users.push(user)
    console.log(this.users.map(u => u.id),"ADD",user.id);
  }  
}
UsersOnline.prototype.remove_user = function(user) {
  console.log("remove_user",user.id);
  this.users = this.users.filter(u => u.id != user.id )
}
UsersOnline.prototype.getUser = function () {
  console.log("getUser",this.users);
  return this.users //.sort((a, b) => a.email.localeCompare(b.email))
}
export default UsersOnline