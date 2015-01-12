class LogEntry < ActiveRecord::Base

  attr_accessible :flight_date, :aircraft_id, :from_airport_id, :to_airport_id, :remarks,
  :no_inst_appr, :day_landings, :night_landings, :single_engine_sea, :single_engine_land,
  :multi_engine_land, :rotor, :cross_country, :day_flight_hours, :night_flight_hours,
  :actual_instrument, :simulated_instrument, :ground_trainer, :dual_received, :pilot_in_command,
  :total_flight_duration, :type_of_flight, :first_pilot, :co_pilot, :aircraft_commander,
  :night_vision_goggles, :combat_flight_time, :mission_number, :military_unit, :military_service,
  :faa_operation_part, :instructor, :carrier_landings, :other_aircrew_time, :night_vision_low_level,
  :night_vision_high_level, :catapult_launches, :touch_and_gos, :bolters, :full_motion_simulator,
  :glider, :intermediate_airport, :second_intermediate_airport, :prop, :jet, :takeoffs,
  :nvg_takeoffs, :nvg_landings, :field_carrier_landings, :instructor_crew, :turbine_time, :civilian,
  :takeoff_time, :landing_time, :user_id

  belongs_to :from_airport, :class_name => 'Airport', :foreign_key => 'from_airport_id'
  belongs_to :to_airport, :class_name => 'Airport', :foreign_key => 'to_airport_id'
  belongs_to :user
  
  belongs_to :aircraft

  validates :flight_date, presence: true
  validates :total_flight_duration, presence: true
  validates :to_airport_id, presence: true
  validates :from_airport_id, presence: true

  validates_presence_of :aircraft
end
