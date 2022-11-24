class GoatsController < ApplicationController
  def index
    if params[:category]
      @goats = Goat.where(category: params[:category])
    else
      @goats = Goat.all
    end
  end

  def show
    @goat = Goat.find(params[:id])
    @markers = [{ lat: @goat.latitude, lng: @goat.longitude }]
  end

  def new
    @goat = Goat.new
  end

  def create
    @goat = Goat.new(goat_params)

    if @goat.save
      redirect_to goat_path(@goat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def unfavorite
    goat = Goat.find(params[:id])
    current_user.unfavorite(goat)

    redirect_to goats_path(goat)
  end

  def favorite
    goat = Goat.find(params[:id])
    current_user.favorite(goat)

    redirect_to goats_path(goat)
  end
end
