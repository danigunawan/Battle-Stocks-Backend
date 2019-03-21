class StockSerializer < ActiveModel::Serializer
  attributes :id, :name, :sector, :ceo, :symbol, :oneYrPrice, :openPrice

  has_many :portfolios
  has_many :users_via_portfolios, through: :portfolios, source: :user

  has_many :portfoliostocks
  has_many :users_via_portfoliostocks, through: :portfoliostocks, source: :user

end
