## Usage
maju = Maju::Client.new( api_token: YOUR_TOKEN_API )

maju.current(city: 'Monte Santo de Minas')

maju.forecast(city: 'Monte Santo de Minas', days_count: 2)