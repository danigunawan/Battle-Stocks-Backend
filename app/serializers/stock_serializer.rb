class StockSerializer < ActiveModel::Serializer
  attributes :id, :name, :sector, :ceo, :symbol, :logo, :oneYrPrice, :openPrice

  # has_many :deadstocks
  # has_many :users, through: :deadstocks

  has_many :portfoliostocks
  has_many :users, through: :portfoliostocks

end
