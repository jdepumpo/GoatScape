class BookingsController < ApplicationController
  def new
    @goat = Goat.find(params[:goat_id])
    dates = params[:dates].split(" to ")
    @start_date = Date.parse(dates[0])
    @end_date = Date.parse(dates[1])
    @days = (@end_date - @start_date).to_i
    @booking = Booking.new
  end

  def create
    @goat = Goat.find(params[:goat_id])
    @booking = Booking.new(user: current_user, goat: @goat, start_date: params[:start_date], end_date: params[:end_date])
    if @booking.save
      redirect_to user_profile_path(current_user.id)
    else
      render :new, status: :unprocessable_entity
      puts "that didn't work"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:dates)
  end
end
