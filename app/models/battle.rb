class Battle < ApplicationRecord
  belongs_to :game
  has_one :player_character, through: :game, class_name: "Character"
  has_one :enemy_character, through: :game, class_name: "Character"

  def get_player_character_id
    self.player_character_id = params[:game][:player_id].to_i
  end

  def get_enemy_character_id
    self.enemy_character_id = params[:game][:enemy_id].to_i
  end

end
