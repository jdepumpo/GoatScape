class PagesController < ApplicationController
  def home
  end

  def profile
    @user = current_user
    @goats = Favorite.where(favoritor: @user)
  end
end
