class FavoritesController < ApplicationController
  def create
    Favorite.create(user_id: current_user.id, book_id: params[:id])
  end

  def destroy
    Favorite.find_by(user_id: current_user.id, book_id: params[:id]).destroy
  end
end
