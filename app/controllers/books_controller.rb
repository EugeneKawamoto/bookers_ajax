class BooksController < ApplicationController

  def top
  end

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :user)
  end

end
