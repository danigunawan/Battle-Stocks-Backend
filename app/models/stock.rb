class Stock < ApplicationRecord
  has_many :deadstocks
  has_many :users, through: :deadstocks
  has_many :portfoliostocks
  has_many :users, through: :portfoliostocks
end
