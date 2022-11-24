class GoatsController < ApplicationController
  def index
    if params[:category]
      @goats = Goat.where(category: params[:category])
    else
      @goats = Goat.all
    end
    @markers = @goats.geocoded.map do |goat|
      { lat: goat.latitude, lng: goat.longitude, image_url: helpers.asset_url("goat.png") }
    end
  end

  def show
    @goat = Goat.find(params[:id])
    @markers = [{ lat: @goat.latitude, lng: @goat.longitude, image_url: helpers.asset_url("goat.png") }]
  end

  def create
    @user = current_user
    @goat = Goat.new(goat_params)
    @goat.user = @user
    # raise
    if @goat.save
      redirect_to goat_path(@goat)
    else
      redirect_to user_profile_path(@user.id), status: :unprocessable_entity
    end
  end

  private

  def goat_params
    params.require(:goat).permit(:name, :category, :description, :price_per_day, :transport_fee, :cleaning_fee)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
