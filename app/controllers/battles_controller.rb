class BattlesController < ApplicationController

  def new
    @battle = Battle.new
  end

  def create

    @battle = Battle.new(
      player_character_id: params[:game][:player_id].to_i,
      enemy_character_id: params[:game][:enemy_id].to_i,
      attack: params[:attack]
    )
    byebug
    @battle.save
    redirect_to "/battles/#{@battle.id}"
  end

  def show
    @battle = Battle.find(params[:id])
  end

  private

  def battle_params
    params.require(:battle).permit(:player_character_id, :enemy_character_id, :attack)
  end

end
