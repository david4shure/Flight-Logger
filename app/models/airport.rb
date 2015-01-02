class Airport < ActiveRecord::Base
  attr_accessible :airport_type, :name, :lat, :long, :elevation, :airport_identifier
end
