class Api::V1::PortfoliostocksController < ApplicationController
  skip_before_action :authorized#, only: [:create]

# before_action :find_portfoliostock, only: [:index]

  # def update
  #   @portfoliostock.update(portfoliostock_params)
  #   if @portfoliostock.save
  #     render json: @portfoliostock, status: :accepted
  #   else
  #     render json: { errors: @portfoliostock.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end
  #
  # def show
  #   render json: @portfoliostock
  # end
  #
  # def destroy
  #   @portfoliostock.destroy
  # end

  def index
    @portfoliostocks = Portfoliostock.all
    render json: @portfoliostocks
  end

  # def create
  #   @portfoliostock = portfoliostock.create(portfoliostock_params)
  #   if @portfoliostock.valid?
  #     render json: { portfoliostock: portfoliostockSerializer.new(@portfoliostock) }, status: :created
  #   else
  #     render json: { error: 'failed to create portfoliostock' }, status: :not_acceptable
  #   end
  # end


  private

    def portfoliostock_params
      params.require(:portfoliostock).permit(:user_id, :stock_id)
    end

    # def find_portfoliostock
    #   @portfoliostock = portfoliostock.find(params[:id])
    # end










end
