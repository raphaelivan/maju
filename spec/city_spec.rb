RSpec.describe 'Get Cities' do
  describe 'passing params' do 
    it 'should returns 200 when pass a city name'
    it 'should returns in português when to pass lang=pt_br'
    it 'should returns in Kelvin when to pass units=Kelvin'
  end

  describe 'no passing params' do 
    it 'should returns a message asking a city'
  end
end
