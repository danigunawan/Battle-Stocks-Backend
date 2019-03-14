class Stock < ApplicationRecord

  has_many :portfoliostocks
  has_many :users, through: :portfoliostocks

end
