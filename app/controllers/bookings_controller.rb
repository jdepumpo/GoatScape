class BookingsController < ApplicationController
  def new
    @goat = Goat.find(params[:goat_id])
    dates = params[:dates].split(" to ")
    start_date = Date.parse(dates[0])
    end_date = Date.parse(dates[1])
    @days = (end_date - start_date).to_i
  end

  def create
    @booking = Booking.new(booking_params)
    if @goat.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
