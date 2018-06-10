require 'net/http'
require 'json'
require_relative './statement'

class Bill

  def self.get_data(url = 'http://safe-plains-5453.herokuapp.com/bill.json', http_class = Net::HTTP)
    uri = URI.parse(url)
    response = http_class.get_response(uri)
    JSON.parse(response.body)
  end

end
