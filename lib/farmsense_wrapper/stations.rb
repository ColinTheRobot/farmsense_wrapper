require 'pry'
require 'httparty'
require 'json'

module GetStation
  class Stations
    attr_reader :endpoint_url
    attr_writer :latitude, :longitude

    # has to initialize with arguments as a hash
    def initialize(args)
      @latitude = args[:latitude]
      @longitude = args[:longitude]
      @endpoint_url = "http://farmsense-prod.apigee.net/v1/frostdates/stations/?lat=#{@latitude}8&lon=#{@longitude}"
    end

    def display
      get
      @parsed_response
    end

    def get
     raw = HTTParty.get(endpoint_url)
     @parsed_response = parse(raw)
    end

    def parse(data)
      JSON.parse(data)
    end
  end
end

  s = Stations.new({latitude: 42, longitude: -112})
binding.pry


# to start this needs to just get the frost dates like how I want them.
# then it can provide options to get any frost date.
# these are all parsing methods,
# then a display method, so the display method should
# get should get refactored into initialize as self.get
# then build the gem then install
# build


# So I'm going to have three different calls for frostdates (which is the priority)
# then for moon phases and day lengths

# Frost dates only has to call get stations and get frost dates. 2 methods

# so then need
