class User < ApplicationRecord
  has_many :games
  validates :name, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}

  has_secure_password

  def self.top_scores
    self.order(:wins)
  end
end
