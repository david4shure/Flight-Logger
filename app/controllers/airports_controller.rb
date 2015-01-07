class AirportsController < ApplicationController
  def index
    query = params[:query].present? ? params[:query].downcase : params[:query]

    if query.present?
      @airports = Airport.where("airport_identifier LIKE '%" + query + "%'")# OR name LIKE '%" + query + "%'")
    else
      @airports = Airport.all
    end
    
    respond_to do |format|
      format.json do
        render :json => @airports.to_json( { :single_record => false } )
      end
    end
  end

  def new
  end
  
  def show
    @airport = Airport.find params[:id]
    respond_to do |format|
      format.json do
        render :json => @airport.to_json({ :single_record => true })
      end
    end
  end
end
