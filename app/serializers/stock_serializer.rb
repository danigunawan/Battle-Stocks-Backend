class StockSerializer < ActiveModel::Serializer
  attributes :id, :year_open_price, :today_open_price, :name, :sector, :ceo, :symbol, :logo

  has_many :deadstocks
  has_many :users, through: :deadstocks

  has_many :portfoliostocks
  has_many :users, through: :portfoliostocks 

end
