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

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to boats_path
  end
end
