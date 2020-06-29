class UsersController < ApplicationController

  def index
    @users = User.all 
    render json: @users 
  end

  def show
  end

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user 
    else
      render status: 422
    end
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :api_token, :api_secret, :password)
  end

end
