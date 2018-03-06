class BattlesController < ApplicationController

  def show
    @battle = Battle.find(params[:id])
  end

  private

  def battle_params
    params.require(:battle).permit(:player_character_id, :enemy_character_id, :attack)
  end

end
