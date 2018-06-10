require './lib/bill'

describe Bill do

  describe '#get_data' do
    it 'should respond to get_data with 2 argument' do
      expect(Bill).to respond_to(:get_data).with(2).arguments
    end
  end
end
