class Portfolio < ApplicationRecord
  belongs_to :user
  belongs_to :stock

   def self.yours
    #index
    self.all.map do |portfolio|

       {
        symbol: portfolio.symbol,
        shares: portfolio.shares,
        stock_id: portfolio.stock_id,
        user_id: portfolio.user_id
      }
    end
  end

  # def details
  #   #show
  #   {
  #     portfolio: self,
  #     hotel: self.hotel.name,
  #     game: self.game,
  #     transportation: self.transportation.name
  #   }
  # end

end
