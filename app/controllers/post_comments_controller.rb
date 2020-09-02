class PostCommentsController < ApplicationController
before_action :authenticate_user!
  def create
    book = Book.find(params[:book_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.book_id = book.id
    if comment.save
      flash[:success] = "Comment was successfully created."
    end
    redirect_back(fallback_location: books_path)
  end

  def destroy
    PostComment.find_by(id: params[:id], book_id: params[:book_id]).destroy
    redirect_to book_path(params[:book_id])
  end

  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
