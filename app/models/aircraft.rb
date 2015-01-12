class Aircraft < ActiveRecord::Base
  attr_accessible :user_id, :tail_number, :manufacturer, :type_designator, :model_name, 
  :fuel_burn, :description, :retired, :class

  belongs_to :user
end
