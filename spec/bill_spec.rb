require './lib/bill'

describe 'Bill' do

  describe '#get_data' do
    it 'should respond to get_data with 2 argument' do
      expect(Bill).to respond_to(:get_data).with(2).arguments
    end

    it 'should return json object when called' do
      URI = double(parse: 'test')
      JSON = double(parse: 'response body in json')
      response = double(body: 'response body')
      http_class = double(get_response: response)
      expect(Bill.get_data('test_url', http_class)).to eq('response body in json')
    end
  end
end
