class User < ApplicationRecord
  has_many :user_characters
  has_many :characters, through: :user_character
  validates :name, uniqueness: true, presence: true
  validates :password, presence: true, length: {minimum: 6}

  has_secure_password

end
