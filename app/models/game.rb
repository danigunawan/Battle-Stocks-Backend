class Game < ApplicationRecord
  has_many :stockgames
  has_many :stocks, through: :stockgames
  belongs_to :user
end
