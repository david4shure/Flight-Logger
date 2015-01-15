class Aircraft < ActiveRecord::Base
  attr_accessible :user_id, :tail_number, :manufacturer, :type_designator, :model_name,
  :fuel_burn, :description, :retired, :aircraft_class, :fuel_unit

  belongs_to :user
  has_many :log_entries

  validates :tail_number, :presence => true
  validates :manufacturer, :presence => true
  validates :type_designator, :presence => true
  validates :model_name, :presence => true
  validates :fuel_burn, :presence => true
  validates :description, :presence => true
  validates :aircraft_class, :presence => true
  validates :fuel_unit, :presence => true
  
  def make_and_model
    "#{manufacturer} #{model_name} : #{tail_number}"
  end
end
