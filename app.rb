require 'sinatra'
require_relative './lib/bill'

class Billing < Sinatra::Base
  get '/' do
    @statement = Statement.new(Bill.get_data)
    @statement.parse
    erb :statement
  end
end
