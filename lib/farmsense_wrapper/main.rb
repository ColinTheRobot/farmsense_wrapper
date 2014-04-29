 require_relative 'stations.rb'


def stations(lat, long)
  s = GetStation::Stations.new({latitude: lat, longitude: long})
  s.display
end

stations(41, -112)
# binding.pry


# i want a method that takes two arguments
# creates a new station object
# and outputs display
