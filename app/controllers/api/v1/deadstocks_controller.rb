class Api::V1::DeadstocksController < ApplicationController
  skip_before_action :authorized#, only: [:create]

  # before_action :find_deadstock, only: [:index]

  # def update
  #   @deadstock.update(deadstock_params)
  #   if @deadstock.save
  #     render json: @deadstock, status: :accepted
  #   else
  #     render json: { errors: @deadstock.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end
  #
  # def show
  #   render json: @deadstock
  # end
  #
  # def destroy
  #   @deadstock.destroy
  # end

  def index
    @deadstocks = Deadstock.all
    render json: @deadstocks
  end

  # def create
  #   @deadstock = deadstock.create(deadstock_params)
  #   if @deadstock.valid?
  #     render json: { deadstock: deadstockSerializer.new(@deadstock) }, status: :created
  #   else
  #     render json: { error: 'failed to create deadstock' }, status: :not_acceptable
  #   end
  # end


  private

    def deadstock_params
      params.require(:deadstock).permit(:user_id, :stock_id)
    end

    # def find_deadstock
    #   @deadstock = deadstock.find(params[:id])
    # end

  end
