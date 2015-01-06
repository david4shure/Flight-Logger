class AirportsController < ApplicationController

  def index
    @airports = Airport.all

    q = params[:query]

    respond_to do |format|
      format.json do
        render :json => @airports.to_json
      end
    end
  end

  def new
  end
  
  def show
  end
end
