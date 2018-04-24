class Game < ApplicationRecord
  belongs_to :user
  belongs_to :player_character, class_name: "Character"
  belongs_to :enemy_character, class_name: "Character"
  has_many :battles
  validate :unique_player_and_enemy

  FIGHT_MOVES = ['punch', 'kick', 'headbutt']

  def get_player_character
    Character.find(self.player_character_id)
  end

  def get_enemy_character
    Character.find(self.enemy_character_id)
  end

  def unique_player_and_enemy
    if get_player_character == get_enemy_character
      errors.messages[:player_character] << "cannot be the same as the enemy character."
    end
  end

  def get_winner
    Character.find_by(name: self.winner)
  end

end
