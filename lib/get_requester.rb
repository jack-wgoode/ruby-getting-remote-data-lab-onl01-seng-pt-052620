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
  
  
  def parse_json 
    results  = get_response_body.parse
  end
  
  
  
  
  
  end # Write your code here
