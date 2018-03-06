class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user_id = session[:user_id]
    @game.save
    redirect_to "/round1/#{@game.id}"
  end

  def round1
    @game = Game.find(params[:id])
  end


  private

  def game_params
    params.require(:game).permit(:user_id, :player_character_id, :enemy_character_id, :winner, :loser)
  end

end
