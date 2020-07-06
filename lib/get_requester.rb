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
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  
  
  # def parse_json
  #   # get_requester = GetRequester.new(URL)
  #   # results = get_requester.parse_json
  #   results = self.parse_json
  #   results
  # end 
  
  
  
  
  end # Write your code here
