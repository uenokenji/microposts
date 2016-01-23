class FavoritesController < ApplicationController
  before_action :logged_in_user

  def create
    @user = User.find(params[:micropost_id])
    @favorite = current_user.favorites(@user)
  end

  if @favorite.save
    redirect_to root_path , notice: "お気に入りに登録しました"
  else
    redirect_to root_path , notice: "このツイートはお気に入りに登録できません"
  end

  def favorites
      @user = User.find(params[:id])
  end
  
end
