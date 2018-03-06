class Character < ApplicationRecord
  has_many :user_characters
  has_many :users, through: :user_character
  has_many :games, foreign_key: "player_character_id"
  has_many :games, foreign_key: "enemy_character_id"
end
