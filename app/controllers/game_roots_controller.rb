class GameRootsController < ApplicationController
  before_action :set_game_root, only: [:show, :edit, :update, :destroy]

  # GET /game_roots
  # GET /game_roots.json
  def index
    @game_roots = GameRoot.all
  end

  # GET /game_roots/1
  # GET /game_roots/1.json
  def show
  end

  # GET /game_roots/new
  def new
    @game_root = GameRoot.new
  end

  # GET /game_roots/1/edit
  def edit
  end

  # POST /game_roots
  # POST /game_roots.json
  def create
    @game_root = GameRoot.new(game_root_params)

    respond_to do |format|
      if @game_root.save
        format.html { redirect_to @game_root, notice: 'Game root was successfully created.' }
        format.json { render :show, status: :created, location: @game_root }
      else
        format.html { render :new }
        format.json { render json: @game_root.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_roots/1
  # PATCH/PUT /game_roots/1.json
  def update
    respond_to do |format|
      if @game_root.update(game_root_params)
        format.html { redirect_to @game_root, notice: 'Game root was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_root }
      else
        format.html { render :edit }
        format.json { render json: @game_root.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_roots/1
  # DELETE /game_roots/1.json
  def destroy
    @game_root.destroy
    respond_to do |format|
      format.html { redirect_to game_roots_url, notice: 'Game root was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_root
      @game_root = GameRoot.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def game_root_params
      params.require(:game_root).permit(:available, :user_id)
    end
end
