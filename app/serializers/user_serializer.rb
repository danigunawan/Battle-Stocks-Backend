class UserSerializer < ActiveModel::Serializer
  attributes :id, :bank_account, :stock_account, :username

  has_many :portfolios
  has_many :stocks_via_portfolios, through: :portfolios, source: :stock

  has_many :portfoliostocks
  has_many :stocks_via_portfoliostocks, through: :portfoliostocks, source: :stock


end
