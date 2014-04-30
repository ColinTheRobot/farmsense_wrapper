 require_relative 'stations.rb'
 require_relative 'frost_dates.rb'

#return nearest station to your coordinates

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

 binding.pry



# i want a method that takes two arguments
# creates a new station object
# and outputs display
