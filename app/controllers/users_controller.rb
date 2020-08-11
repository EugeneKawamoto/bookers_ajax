class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

end
