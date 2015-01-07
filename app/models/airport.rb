class Airport < ActiveRecord::Base
  attr_accessible :airport_type, :name, :lat, :long, :elevation, :airport_identifier

  def as_json(options = {})
    blob = {}
    blob[:id]                 = self.id
    blob[:airport_type]       = self.airport_type
    blob[:name]               = self.name
    if options[:single_record]
      blob[:lat]                = self.lat 
      blob[:long]               = self.long
      blob[:elevation]          = self.elevation
      blob[:airport_identifier] = self.airport_identifier
    end
    blob
  end
end
