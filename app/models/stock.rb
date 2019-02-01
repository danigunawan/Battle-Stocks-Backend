class Stock < ApplicationRecord
  has_many :stockgames
  has_many :games, through: :stockgames
end
