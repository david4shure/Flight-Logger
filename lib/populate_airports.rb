#!/usr/bin/env ruby
ENV['RAILS_ENV'] = "development" # Set to your desired Rails environment name

require "/Users/david.shure/stash/flight-logger/config/environment.rb"
require 'csv'


CSV.foreach("/Users/david.shure/Downloads/airports.csv") do |row|
  Airport.create!(:airport_type => row[2].downcase, :name => row[3].downcase, :lat => row[4].downcase, :long => row[5].downcase, :elevation => row[6], :airport_identifier => row[1].downcase)
end
