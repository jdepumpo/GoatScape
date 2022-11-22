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
end
