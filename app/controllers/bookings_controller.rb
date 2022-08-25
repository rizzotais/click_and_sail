class BookingsController < ApplicationController
  def show
    @booking = Boat.find(params[:id])
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @booking = Boat.new(boat_params)
    @booking.user = current_user
    @booking.save
  end

  def edit
    @booking = booking.find(params[id])
  end

  def update
    @booking = booking.find(params[id])
    @booking.update(restaurant_params)
    # redirect_to boat_path(@boat)
  end
end
