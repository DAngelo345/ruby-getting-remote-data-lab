# Write your code here
require 'pry'
require 'open-uri'
require 'net/http'
require 'json'

class GetRequester

   

    # URL = 'https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json'

    def initialize(url)
        @url = url
     
    end

    
    def get_response_body
        #get_requester = GetRequester.new(URL)
        # NET::HTTP
      uri = URI.parse(@url)
     response = Net::HTTP.get_response(uri)
     response.body
  #binding.pry
    end

    def parse_json
        JSON.parse(get_response_body)
        
        
    end
end
