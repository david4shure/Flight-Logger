class AirportsController < ApplicationController

  def index
    query = params[:query]

    if query.present?
      @airports = Airport.where("airport_identifier LIKE '%" + query + "%' OR name LIKE '%" + query + "%'")
      puts @airports.to_sql
    else
      @airports = Airport.all
    end
    

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
