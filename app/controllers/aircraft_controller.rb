class AircraftController < ApplicationController
  def new
    @aircraft = Aircraft.new
  end

  def create
    @aircraft = current_user.aircraft.create params[:aircraft]
    if @aircraft.save
      redirect_to aircraft_path(@aircraft)
    else
      render "/aircraft/new"
    end
  end
  
  def show
    @aircraft = Aircraft.find params[:id]
  end
  
  def index
  end
end
