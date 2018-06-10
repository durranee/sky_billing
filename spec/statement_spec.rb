require './lib/statement'

describe 'Statement' do
  call_charges = [{'called' => 'call time', 'duration' => 'duration', 'cost' => 'call cost'}]
  package = {"type"=>"tv", "name"=>"tv package", "cost"=>50.0}
  sky_store = {"rentals"=>[{"title"=>"title", "cost"=>4.99}],
   "buyAndKeep"=>[{"title"=>"title", "cost"=>9.99}], "total"=>24.97}

  json_bill = { 'statement' => 'statement',
                'total' => 54.99,
                'package' => package,
                'callCharges' => call_charges,
                'skyStore' => sky_store
  }

  describe 'parse' do
    it 'should set json data received in to statement object' do
      st = Statement.new(json_bill)

      st.parse()
      expect(st.statement).to eq('statement')
      expect(st.total).to eq(54.99)
      expect(st.package).to eq(package)
      expect(st.call_charges).to eq(call_charges)
      expect(st.sky_store).to eq(sky_store)
    end
  end

end
