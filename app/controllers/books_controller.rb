class BooksController < ApplicationController

  def top
  end

  def about
  end

  def new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :user)
  end

end
