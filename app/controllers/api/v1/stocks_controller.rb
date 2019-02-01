class Api::V1::StocksController < ApplicationController
  # before_action :find_stock, only: [:show]

  # def show
  #   render json: @stock
  # end

  def index
    @stocks = Stock.all
    render json: @stocks
  end

  # private
  #
  #   def stock_params
  #     params.permit(:year_open_price, :today_open_price, :name, :sector, :ceo, :symbol, :logo)
  #   end
  #
  #   def find_stock
  #     @stock = Stock.find(params[:id])
  #   end
  # end

end
