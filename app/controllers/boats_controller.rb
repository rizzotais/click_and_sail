class BoatsController < ApplicationController
  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    @boat.save
    # redirect_to boat_path(@boat)
  end

  private

  def boat_params
    params.require(:boat).permit(:brand, :size, :boat_type, :year)
  end
end
