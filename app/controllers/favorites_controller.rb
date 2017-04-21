class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    tweet = Micropost.find(params[:tweet_id])
    current_user.favo(tweet)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to current_user
  end

  def destroy
    tweet = Micropost.find(params[:tweet_id])
    current_user.unfavo(tweet)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to current_user
  end
end
