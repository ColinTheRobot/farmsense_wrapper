require_relative 'farmsense_wrapper/version'
require_relative 'farmsense_wrapper/stations'
require_relative 'farmsense_wrapper/frost_dates'
require 'httparty'

#return nearest station to your coordinates
module FarmSenseWrapper
    include HTTParty
    class << self

    def stations(lat, long)
      s = GetStation::Stations.new({latitude: lat, longitude: long})
      s.display
    end

    # acquire station_id from method abov
    # specify season with 1 for spring 2 for autumn

    def dates(station_id, season)
      d = FindFrostDates::FrostDates.new({station_id: station_id, season: season})
      d.display
    end
  end
end



# TODO: a method that takes two arguments creates a new station object and outputs display
# OPTIMIZE: methods that parse probabilities
# OPTIMIZE: methods that pars dates and return a time object
