require "httparty"
require "active_support/core_ext"

module Worldweatheronline
  class FreeWeather
    include HTTParty
    def self.default_options
      {
        format: :json,
        key: Worldweatheronline.api_key,
      }
    end

    def self.log(arg)
      puts arg
    end

    #  q                          Pass US Zipcode, UK Postcode, Canada
    #  Postalcode, IP address, Latitude/Longitude (decimal degree) or city name
    #  format                     Output format as JSON, XML, CSV or TAB
    #  extra                      (Optional) It allows to request some
    #  additional information in the feed return. Possible values are
    #  localObsTime, isDayTime, utcDateTime. Two or more values can be passed
    #  as comma separated.
    #  num_of_days
    #  date
    #  fx
    #  cc
    #  includelocation
    #  show_comments
    #  callback
    #
    def self.weather(options={})
      q = default_options.merge(options).to_query
      url = "http://api.worldweatheronline.com/free/v1/weather.ashx?#{q}"
      log "GET: #{url}"
      response = get(url)

      if response.code > 300
        raise ApiError.describe("Failed #weather: Code: #{response.code}", response)
      end
      JSON.parse(response.body)["data"]
    end


  end


  class ApiError < Exception
    attr_accessor :response
    def self.describe(message, response)
      e = new(message)
      e.response = response
      e
    end
  end
end
