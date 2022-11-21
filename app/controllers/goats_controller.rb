class GoatsController < ApplicationController
  def index
    @goats = Goat.all
  end
end
