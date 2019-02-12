class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized#, only: [:create]
  before_action :find_user, only: [:show, :update]

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

  def edit
     @user = User.find(params[:id])
   end

  # def destroy
  #   @user.destroy
  # end
  #
  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
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
      @user = User.find(params[:id])
    end
  end

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
