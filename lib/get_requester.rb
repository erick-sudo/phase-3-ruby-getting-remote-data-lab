# Write your code here
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        return response.body
    end

    def parse_json
        json = JSON.parse(get_response_body)
        return json
    end
end