class BooksController < ApplicationController
  before_action :redirect_root, except: [:top, :about]
  def top
  end

  def about
  end

  def new
  end

  def create
    @book = Book.new(book_params)
    @books = Book.all
    @book.user_id = current_user.id
    if @book.save
      flash[:notice] = "Book was successfully created."
      redirect_to book_path(@book.id)
    else
      render action: :index
    end
  end

  def index
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
    @user = User.find(params[:id])
  end

  def edit
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end

  def redirect_root
    redirect_to root_path unless user_signed_in?
  end

end
