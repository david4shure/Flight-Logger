class Aircraft < ActiveRecord::Base
  attr_accessible :user_id, :tail_number, :manufacturer, :type_designator, :model_name,
  :fuel_burn, :description, :retired, :aircraft_class

  belongs_to :user
  has_many :log_entries
end
