require 'spec_helper'
require_relative '../lib/farmsense_wrapper/stations'

describe GetStation::Stations do
  s = GetStation::Stations.new({latitude: 42, longitude: -112})
  stations = s.display
  it "get should display parsed response" do
   expect(stations[0]).to be_instance_of(Hash)
  end
end
