class Stock < ApplicationRecord

  has_many :portfolios
  has_many :users_via_portfolios, through: :portfolios, source: :user

  has_many :portfoliostocks
  has_many :users_via_portfoliostocks, through: :portfoliostocks, source: :user

  def self.sure
    #index

    self.all.map do |stock|

       {
        id: stock.id,
        name: stock.name,
        symbol: stock.symbol,
        oneYrPrice: stock.oneYrPrice,
        openPrice: stock.openPrice
      }
    end
  end
  #
  # def details
  #   #show
  #   {
  #     portfolio: self,
  #     hotel: self.hotel.name,
  #     game: self.game,
  #     transportation: self.transportation.name
  #   }
  # end



#   def game_details
#   home_team = Team.find {|t| t['id_team'] === self['home_team_id']}
#   away_team = Team.find {|t| t['id_team'] === self['away_team_id']}
#
#   stadium = {
#     name: home_team.stadium_name,
#     location: home_team.stadium_location,
#     image: home_team.stadium_img
#   }
#
#   cleanedGame = {
#     id: self.id,
#     title: self.title,
#     date: self.date
#   }
#
#   return {
#     game: cleanedGame,
#     home_team: home_team,
#     away_team: away_team,
#     stadium: stadium
#   }
# end

end
