require 'net/http'
require 'open-uri'
require 'json'

class GetRequester 
  
  @@all = []
  
  def initialize(url)
    @url = url
    @@all << self 
  end
  
   def get_response_body
    uri = URI.parse(self.url)
    response = Net::HTTP.get_response(uri)
    response.body
   end
  
  
  def parse_json
# we use the JSON library to parse the API response into nicely formatted JSON
  results = JSON.parse(self.get_response_body)
  results.collect do |program|
    program["agency"]  
  end
end
  
  
  
  
  
  end # Write your code here
