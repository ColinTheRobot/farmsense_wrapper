require 'spec_helper'
require_relative '../lib/farmsense_wrapper/stations'

describe Stations do
  stations = Stations.new({latitude: 42, longitude: -112})

  it "get should display parsed response" do
   expect(stations.display).to eq("Hash")
  end
end
