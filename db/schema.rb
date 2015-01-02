# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150101232659) do

  create_table "logentries", :force => true do |t|
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.datetime "flight_date"
    t.string   "aircraft_model"
    t.string   "tail_number"
    t.string   "from"
    t.string   "to"
    t.string   "remarks"
    t.integer  "no_inst_appr"
    t.integer  "day_landings"
    t.integer  "night_landings"
    t.float    "single_engine_sea"
    t.float    "single_engine_land"
    t.float    "multi_engine_land"
    t.integer  "rotor"
    t.float    "cross_country"
    t.float    "day_flight_hours"
    t.float    "night_flight_hours"
    t.float    "actual_instrument"
    t.float    "simulated_instrument"
    t.float    "ground_trainer"
    t.float    "dual_received"
    t.float    "pilot_in_command"
    t.float    "total_flight_duration"
    t.string   "type_of_flight"
    t.float    "first_pilot"
    t.float    "co_pilot"
    t.float    "aircraft_commander"
    t.float    "night_vision_goggles"
    t.float    "combat_flight_time"
    t.string   "mission_number"
    t.string   "military_unit"
    t.string   "military_service"
    t.integer  "faa_operation_part"
    t.float    "instructor"
    t.integer  "carrier_landings"
    t.float    "other_aircrew_time"
    t.float    "night_vision_low_level"
    t.float    "night_vision_high_level"
    t.integer  "catapult_launches"
    t.integer  "touch_and_gos"
    t.integer  "bolters"
    t.integer  "full_motion_simulator"
    t.float    "glider"
  end

end
