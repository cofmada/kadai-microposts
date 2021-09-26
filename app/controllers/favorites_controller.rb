class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  before_action :set_micropost

  
  def create
    current_user.favo(micropost)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to likes_user_url
  end

  def destroy
    current_user.unfavo(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to likes_user_url
  end
  
  private
  
  def set_micropost
    @micropost = Micropost.find(params[:micropost_id])
  end
end