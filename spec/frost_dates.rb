require 'spec_helper'
require_relative '../lib/farmsense_wrapper/frost_dates'

describe FrostDates do
  dates = FrostDates.new({station_id: 506586, season: 2})

  it "get should display parsed response"
  # expect(dates.display).to
  end
end
