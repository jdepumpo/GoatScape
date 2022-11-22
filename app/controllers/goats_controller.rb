class GoatsController < ApplicationController
  def index
    @goats = Goat.all
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
