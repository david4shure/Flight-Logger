class AddColumnsToLogentries < ActiveRecord::Migration
  def change
    add_column :logentries, :flight_date, :datetime
    add_column :logentries, :aircraft_model, :string
    add_column :logentries, :tail_number, :string
    add_column :logentries, :from, :string
    add_column :logentries, :to, :string
    add_column :logentries, :remarks, :string
    add_column :logentries, :no_inst_appr, :integer
    add_column :logentries, :day_landings, :integer
    add_column :logentries, :night_landings, :integer
    add_column :logentries, :single_engine_sea, :float
    add_column :logentries, :single_engine_land, :float
    add_column :logentries, :multi_engine_land, :float
    add_column :logentries, :rotor, :integer
    add_column :logentries, :cross_country, :float
    add_column :logentries, :day_flight_hours, :float
    add_column :logentries, :night_flight_hours, :float
    add_column :logentries, :actual_instrument, :float
    add_column :logentries, :simulated_instrument, :float
    add_column :logentries, :ground_trainer, :float
    add_column :logentries, :dual_received, :float
    add_column :logentries, :pilot_in_command, :float
    add_column :logentries, :total_flight_duration, :float
    add_column :logentries, :type_of_flight, :string
    add_column :logentries, :first_pilot, :float
    add_column :logentries, :co_pilot, :float
    add_column :logentries, :aircraft_commander, :float
    add_column :logentries, :night_vision_goggles, :float
    add_column :logentries, :combat_flight_time, :float
    add_column :logentries, :mission_number, :string
    add_column :logentries, :military_unit, :string
    add_column :logentries, :military_service, :string
    add_column :logentries, :faa_operation_part, :integer
    add_column :logentries, :instructor, :float
    add_column :logentries, :carrier_landings, :integer
    add_column :logentries, :other_aircrew_time, :float
    add_column :logentries, :night_vision_low_level, :float
    add_column :logentries, :night_vision_high_level, :float
    add_column :logentries, :catapult_launches, :integer
    add_column :logentries, :touch_and_gos, :integer
    add_column :logentries, :bolters, :integer
    add_column :logentries, :full_motion_simulator, :integer
    add_column :logentries, :glider, :float
  end
end
