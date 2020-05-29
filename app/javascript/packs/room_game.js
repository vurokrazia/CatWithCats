function RoomGame() {
  this.id         = null;
  this.available  = null;
  this.created_at = null;
  this.updated_at = null;
  this.user_id    = null;
};
RoomGame.prototype.set_params = function(params){
  this.id         = params["id"];
  this.available  = params["available"];
  this.created_at = params["created_at"];
  this.updated_at = params["updated_at"];
  this.user_id    = params["user_id"];
}
export default RoomGame;