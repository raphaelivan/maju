RSpec.describe 'Forecast Method' do
  describe 'passing valids params' do 
    before do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
    end

    it 'should returns 200 when pass a city name' do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
      response = client.forecast({ city: 'Mococa' })
      expect(response['cnt']).to be > 0
    end

    it 'should returns 2 timestamps when pass a days_count' do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
      response = client.forecast({ days_count: 2, city: 'Mococa' })
      expect(response['list'].length).to eq(2)
    end
  end

  describe 'passing invalids params' do 
    it 'should returns a message asking a city' do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
     expect {
          client.forecast({ city: nil })
      }.to raise_error(RuntimeError)
    end

    it 'should returns 15 days if days_count greather 15' do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
      response = client.forecast({ days_count: 20, city: 'Mococa' })
      expect(response['list'].length).to eq(15)
    end

    it 'should returns a message asking a geocode(lat, long)' do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
      expect {
        client.forecast({ lat: nil, long: nil })
      }.to raise_error(RuntimeError)
    end
  end
end
