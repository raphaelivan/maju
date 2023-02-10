RSpec.describe 'Current Method' do
  describe 'passing params' do 
    before do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
    end

    it 'should returns 200 when pass a city name' do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
      response = client.current({ city: 'Mococa' })
      expect(response).to include('coord')
    end


    it 'should returns in portuguese when to pass lang=pt_br' do 
      client = Maju::Client.new( lang: 'pt_br', api_token: ENV['API_OPENWEATHER_TOKEN'] )
      response = client.current({ city: 'Mococa' })
      expect(response['sys']['country']).to eq('BR')
    end
  end

  describe 'no passing params' do 
    it 'should returns a message asking a city' do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
     expect {
          client.current({ city: nil })
      }.to raise_error(RuntimeError)
    end

    it 'should returns a message asking a geocode(lat, long)' do 
      client = Maju::Client.new( api_token: ENV['API_OPENWEATHER_TOKEN'] )
      expect {
        client.current({ lat: nil, long: nil })
      }.to raise_error(RuntimeError)
    end
  end
end
