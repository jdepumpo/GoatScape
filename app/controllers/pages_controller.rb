class PagesController < ApplicationController
  def home
  end

  def profile
    @user = current_user
    @my_goats = current_user.goats
    @goat = Goat.new
    @goats = Favorite.where(favoritor: @user)
  end
end
