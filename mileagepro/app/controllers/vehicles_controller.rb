class VehiclesController < ApplicationController
  def index
  end

  def new
  end

  def create
  	@vehcile = Vehicle.new(vehicle_params)

  	@vehicle.save
  	redirect_to @vehicle
  end

  private
  	def vehicle_params
  		params.require(:vehicle).permit(:year, :make, :model)
  	end
end
