require 'pry'
require 'httparty'
require 'json'


class FrostDates
  attr_reader :endpoint_url
  attr_writer :station_id, :season
# this object gets initialized with a station id found in stations.rb and a season.
# 1 for spring, 2 for fall.
  def initialize(args)
    @station_id = args[:station_id]
    @season = args[:season]
    @endpoint_url = "http://farmsense-prod.apigee.net/v1/frostdates/probabilities/?station=#{@station_id}&season=#{@season}"
  end

  def display
    get
    @parsed_response
  end

private

  def get
    raw = HTTParty.get(endpoint_url)
    @parsed_response = parse(raw)
  end

  def parse(data)
    JSON.parse(data)
  end
end

binding.pry
