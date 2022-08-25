class BookingsController < ApplicationController
  before_action :set_boat, only: %i[new create]
  def index
    @booking = Booking.all
  end

  def show
    @booking = Boat.find(params[:id])
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(boooking_params)
    @booking.user = current_user
    @booking.boat = @boat
    @booking.save
    redirect_to boats_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to boats_path
  end

  private

  def set_boat
    @boat = Boat.find(params[:boat_id])
  end

  def boooking_params
    params.require(:booking).permit(:check_in, :check_out)
  end

end
