function RoomGame() {
  this.id = 0;
  this.email = "";
  this.created_at = ""
  this.updated_at = ""
};
RoomGame.prototype.set_params = function(params){
  console.log("RoomGame" + params);
}
export default RoomGame;