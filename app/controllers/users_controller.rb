class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
    @book = Book.new
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(current_user)
    end
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

  def redirect_root
    redirect_to root_path unless user_signed_in?
  end

end
