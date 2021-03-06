class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to learning@negotiatus!"
      redirect_to @user
    else 
      render 'new'
    end
  end

  # Private methods
  private
    # Used to filter the creational params.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end