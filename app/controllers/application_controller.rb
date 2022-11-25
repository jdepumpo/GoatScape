class ApplicationController < ActionController::Base
  @goats = Goat.all
end
