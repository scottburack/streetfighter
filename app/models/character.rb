class Character < ApplicationRecord
  has_many :games, foreign_key: "player_character_id"
  has_many :games, foreign_key: "enemy_character_id"
end
