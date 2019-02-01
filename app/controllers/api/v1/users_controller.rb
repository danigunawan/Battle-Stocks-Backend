class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [create]

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: @user
  end

  def destroy
    @user.destroy
  end

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end


  private

    def user_params
      params.require(:user).permit(:bank_account, :username, :password)
    end

    def find_user
      @user = user.find(params[:id])
    end
  end
