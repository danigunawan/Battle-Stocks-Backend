class Api::V1::StocksController < ApplicationController
  skip_before_action :authorized#, only: [:create]

  # before_action :find_stock, only: [:show]

  # def show
  #   render json: @stock
  # end

  def index
    @stocks = Stock.all
    render json: @stocks
  end

  def create
    # @stock = Stock.find_or_create_by(symbol: stock_params[:symbol], oneYrPrice: stock_params[:oneYrPrice], openPrice: stock_params[:openPrice], name: stock_params[:name])
    @stock = Stock.create(stock_params)
    if @stock.valid?
      @token = encode_token(stock_id: @stock.id)
      render json: { stock: StockSerializer.new(@stock) }, status: :created
    else
      render json: { error: 'failed to create stock' }, status: :not_acceptable
    end
  end

  # def destroy
  #   @stock.destroy
  # end

  private

    def stock_params
      params.permit(:name, :sector, :ceo, :symbol, :logo, :oneYrPrice, :openPrice)
    end
  end

  #   def find_stock
  #     @stock = Stock.find(params[:id])
  #   end
  # end


  #   class DogsController < ApplicationController
  #   def index
  #     @dogs = Dog.all
  #   end
  #
  #   def show
  #     @dog = Dog.find(params[:id])
  #   end
  #
  #   def new
  #     @dog = Dog.new
  #   end
  #
  #   def create
  #     dog = Dog.create(dog_params)
  #
  #     redirect_to dog_path(dog)
  #   end
  #
  #   def edit
  #     @dog = Dog.find(params[:id])
  #   end
  #
  #   def update
  #     @dog = Dog.find(params[:id])
  #
  #     @dog.update(dog_params)
  #
  #     redirect_to dog_path(@dog)
  #   end
  #
  #   def destroy
  #     @dog = Dog.find(params[:id])
  #     @dog.destroy
  #
  #     redirect_to dogs_path
  #   end
  #
  #   private
  #
  #   def dog_params
  #     params.require(:dog).permit(:name, :motto)
  #   end
  #
  # end
