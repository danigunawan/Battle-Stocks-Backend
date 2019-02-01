class Stockgame < ApplicationRecord
  belongs_to :stock
  belongs_to :game
end
