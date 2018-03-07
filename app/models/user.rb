class User < ApplicationRecord
  has_many :games
  has_many :user_characters
  has_many :characters, through: :user_character
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}

  has_secure_password

  def get_wins
    Game.where(winner == self.name).count
  end

end
