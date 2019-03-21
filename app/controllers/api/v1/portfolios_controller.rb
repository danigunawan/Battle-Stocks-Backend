class Api::V1::PortfoliosController < ApplicationController
  skip_before_action :authorized#, only: [:create]

# before_action :find_portfolio, only: [:index]

  # def update
  #   @portfolio.update(portfolio_params)
  #   if @portfolio.save
  #     render json: @portfolio, status: :accepted
  #   else
  #     render json: { errors: @portfolio.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end
  #
  def show
    render json: @portfolio
  end
  #
  # def destroy
  #   @portfolio.destroy
  # end

  def index
    @portfolios = Portfolio.all
    render json: @portfolios.yours.uniq
  end

  def create

    @portfolio = Portfolio.create(portfolio_params)

    # @portfolio = Portfolio.find_or_create_by(stock_id: portfolio_params[:stock_id], user_id: portfolio_params[:user_id])
    if @portfolio.valid?

      render json: { portfolio: PortfolioSerializer.new(@portfolio) }, status: :created
    else

      render json: { error: 'failed to create portfolio' }, status: :not_acceptable
    end
  end


  private

    def portfolio_params
      params.require(:portfolio).permit(:user_id, :stock_id, :symbol, :shares)
    end

    # def find_portfolio
    #   @portfolio = portfolio.find(params[:id])
    # end
  end
