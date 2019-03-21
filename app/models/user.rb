class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

  has_many :portfolios
  has_many :stocks_via_portfolios, through: :portfolios, source: :stock

  has_many :portfoliostocks
  has_many :stocks_via_portfoliostocks, through: :portfoliostocks, source: :stock

  def self.yes
    #index


    self.all.map do |user|

       {
        id: user.id,
        account: user.bank_account,
        stock_account: user.stock_account,
        username: user.username


      }
    end
  end

  def details
    #show
    Portfoliostock.all.map
    {
      id: id,
      account: bank_account,
      stock_account: stock_account,
      username: username,
      portfolios: portfolios,
      portfoliostocks: portfoliostocks
    }
  end


end
