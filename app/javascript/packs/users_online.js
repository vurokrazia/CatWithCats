function UsersOnline () {
  this.users = []
}
UsersOnline.prototype.user_uniq = function(user){
  var u = this.users.find(us => us.id = user.id)
  if(u)
    {console.log("user_uniq",u.id , user.id, u.id != user.id);
    return u.id != user.id}
  else 
    return true
}
UsersOnline.prototype.add_user = function(user) {
  console.log("add_user",user.id);
  if(this.user_uniq(user)){
    this.users.push(user)
    console.log(this.users.map(u => u.id),"ADD",user.id);
  }  
}
UsersOnline.prototype.remove_user = function(user) {
  console.log("remove_user",user.id);
  this.users = this.users.filter(u => u.id != user.id )
}
UsersOnline.prototype.getUser = function () {
  return this.users.sort((a, b) => a.email.localeCompare(b.email))
}
export default UsersOnline