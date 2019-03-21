class Api::V1::PortfoliostocksController < ApplicationController
  skip_before_action :authorized#, only: [:create]

# before_action :find_portfoliostock, only: [:index]

  def update
    @portfoliostock = Portfoliostock.find(params[:id])
    @portfoliostock.update(portfoliostock_params)
    if @portfoliostock.save

      render json: @portfoliostock, status: :accepted
    else
      render json: { errors: @portfoliostock.errors.full_messages }, status: :unprocessible_entity
    end
  end
  #
  def show

    @portfoliostock = Portfoliostock.find(params[:id])
    render json: @portfoliostock.shows
  end
  #
  def destroy
    @portfoliostock = Portfoliostock.find(params[:id])
    @portfoliostock.destroy
  end

  def index

    @portfoliostocks = Portfoliostock.all
    render json: @portfoliostocks.finally.uniq
  end

  def create

    @portfoliostock = Portfoliostock.create(portfoliostock_params)

    # @portfoliostock = Portfoliostock.find_or_create_by(stock_id: portfoliostock_params[:stock_id], user_id: portfoliostock_params[:user_id])
    if @portfoliostock.valid?

      render json: { portfoliostock: PortfoliostockSerializer.new(@portfoliostock) }, status: :created
    else

      render json: { error: 'failed to create portfoliostock' }, status: :not_acceptable
    end
  end




  private

    def portfoliostock_params
      params.require(:portfoliostock).permit(:user_id, :stock_id, :win, :owned)
    end

    # def find_portfoliostock
    #   @portfoliostock = portfoliostock.find(params[:id])
    # end
  end
