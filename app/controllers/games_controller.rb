class GamesController < ApplicationController

  def index
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to "/round1"

  end

  def round1
    @game = Game.find(params[:id])
  end


  private

  def game_params
    params.require(:game).permit(:user_id, :player_character_id, :enemy_character_id, :winner, :loser)
  end

end
