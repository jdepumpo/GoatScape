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

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)
    @goat.user = @user
    if @goat.save
      redirect_to goat_path(@goat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def goat_params
    require.params(:goat).permit(:name, :category, :description, :image_url, :price_per_day, :transport_fee, :cleaning_fee)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
