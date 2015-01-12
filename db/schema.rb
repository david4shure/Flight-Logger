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

ActiveRecord::Schema.define(:version => 20150112041523) do

  create_table "aircraft", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
    t.string   "tail_number"
    t.string   "manufacturer"
    t.string   "type_designator"
    t.string   "model_name"
    t.float    "fuel_burn"
    t.string   "description"
    t.boolean  "retired"
    t.string   "aircraft_class"
  end

  create_table "airports", :force => true do |t|
    t.string   "airport_type"
    t.string   "name"
    t.decimal  "lat",                :precision => 15, :scale => 10, :default => 0.0
    t.decimal  "long",               :precision => 15, :scale => 10, :default => 0.0
    t.integer  "elevation"
    t.string   "airport_identifier"
    t.datetime "created_at",                                                          :null => false
    t.datetime "updated_at",                                                          :null => false
  end

  create_table "log_entries", :force => true do |t|
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.datetime "flight_date"
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
    t.string   "intermediate_airport"
    t.string   "second_intermediate_airport"
    t.float    "prop"
    t.float    "jet"
    t.integer  "takeoffs"
    t.integer  "nvg_takeoffs"
    t.integer  "nvg_landings"
    t.integer  "field_carrier_landings"
    t.string   "instructor_crew"
    t.float    "turbine_time"
    t.float    "civilian"
    t.datetime "takeoff_time"
    t.datetime "landing_time"
    t.integer  "from_airport_id"
    t.integer  "to_airport_id"
    t.integer  "user_id"
    t.integer  "aircraft_id"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
