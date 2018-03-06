class Game < ApplicationRecord
  belongs_to :user
  belongs_to :player_character, class_name: "Character"
  belongs_to :enemy_character, class_name: "Character"
  has_many :battles

  FIGHT_MOVES = ['punch', 'kick', 'block']

end
