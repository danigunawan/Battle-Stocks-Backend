class GamesController < ApplicationController

  # before_action :find_game, only: [:show, :update, :edit, :destroy]

  def index
  @games  = game.all
  end

  # def show
  #
  # end

  # def new
  #   @game = game.new
  # end

  private

  # def game_params
  #   params.require(:game).permit(:user_id, :stock_id)
  # end

  # def find_game
  #   @game = game.find_by(id: params[:id])
  # end
end
