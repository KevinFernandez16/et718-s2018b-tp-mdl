class FavoritePlayersController < ApplicationController
  before_action :set_favorite_player, only: [:show, :edit, :update, :destroy]

  # GET /favorite_players
  # GET /favorite_players.json
  def index
    @favorite_players = FavoritePlayer.all
  end

  # GET /favorite_players/1
  # GET /favorite_players/1.json
  def show
  end

  # GET /favorite_players/new
  def new
    @favorite_player = FavoritePlayer.new
  end

  # GET /favorite_players/1/edit
  def edit
  end

  # POST /favorite_players
  # POST /favorite_players.json
  def create
    @favorite_player = FavoritePlayer.new(favorite_player_params)

    respond_to do |format|
      if @favorite_player.save
        format.html { redirect_to @favorite_player, notice: 'Favorite player was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_player }
      else
        format.html { render :new }
        format.json { render json: @favorite_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_players/1
  # PATCH/PUT /favorite_players/1.json
  def update
    respond_to do |format|
      if @favorite_player.update(favorite_player_params)
        format.html { redirect_to @favorite_player, notice: 'Favorite player was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_player }
      else
        format.html { render :edit }
        format.json { render json: @favorite_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_players/1
  # DELETE /favorite_players/1.json
  def destroy
    @favorite_player.destroy
    respond_to do |format|
      format.html { redirect_to favorite_players_url, notice: 'Favorite player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_player
      @favorite_player = FavoritePlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_player_params
      params.require(:favorite_player).permit(:Stats, :Club, :Nationality)
    end
end
