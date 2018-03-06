class BattlesController < ApplicationController

  def new
    @battle = Battle.new
  end

  def create
    @battle = Battle.new(
      player_character_id: params[:game][:player_id].to_i,
      enemy_character_id: params[:game][:enemy_id].to_i,
      attack: params[:attack],
      game_id: params[:game][:id]
    )
    @battle.save
    redirect_to "/battles/#{@battle.id}"
  end

  def show
    @battle = Battle.find(params[:id])
    @battle.get_enemy_move
    @battle.get_player_character
    @battle.get_enemy_character
  end

  private

  def battle_params
    params.require(:battle).permit(:player_character_id, :enemy_character_id, :attack, :game_id)
  end

end
