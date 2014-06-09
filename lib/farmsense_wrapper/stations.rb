require 'json'

module GetStation
  class Stations
    attr_reader :endpoint_url
    attr_writer :latitude, :longitude


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
