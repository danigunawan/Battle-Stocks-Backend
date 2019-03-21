class Portfoliostock < ApplicationRecord
  belongs_to :user
  belongs_to :stock

  def self.finally
    #index

    self.all.map do |portfolio|
       {
        stock_id: portfolio.stock_id,
        user_id: portfolio.user_id,
        win: portfolio.win,
        owned: portfolio.owned,
        symbol: portfolio.stock.symbol,
        name: portfolio.stock.name,
        oneYrPrice: portfolio.stock.oneYrPrice,
        openPrice: portfolio.stock.openPrice,

      }
    end
  end

  def shows

    {
          user_id: self.user_id,
          stock_id: self.stock_id,
          win: self.win,
          owned: self.owned
    }

  end
end
