require 'spec_helper'
require_relative '../lib/farmsense_wrapper/frost_dates'

describe FindFrostDates::FrostDates do
  d = FindFrostDates::FrostDates.new({station_id: 506586, season: 2})
  it "get should display parsed response" do
   expect(d.display[0]).to be_instance_of(Hash)
  end
end
