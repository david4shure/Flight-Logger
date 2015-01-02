#!/usr/bin/env ruby
ENV['RAILS_ENV'] = "development" # Set to your desired Rails environment name

require "/Users/david.shure/stash/flight-logger/config/environment.rb"
require 'csv'


CSV.foreach("/Users/david.shure/Downloads/airports.csv") do |row|
  Airport.create!(:airport_type => row[2], :name => row[3], :lat => row[4], :long => row[5], :elevation => row[6], :airport_identifier => row[1])
end
