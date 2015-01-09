class Airport < ActiveRecord::Base
  attr_accessible :airport_type, :name, :lat, :long, :elevation, :airport_identifier

  def as_json(options = {})
    blob = {}

    blob[:id]                 = self.id
    blob[:name]               = self.name.titleize
    blob[:airport_identifier] = self.airport_identifier
    blob[:lat]                = self.lat
    blob[:long]               = self.long

    if options[:single_record]
      blob[:airport_type]       = self.airport_type
      blob[:elevation]          = self.elevation
    end

    blob
  end

end
