class User < ApplicationRecord
  has_many :user_characters
  has_many :characters, through: :user_character

  has_secure_password
  
end
