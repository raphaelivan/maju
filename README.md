# StringHelpers
Get weather information about a city easily with Maju.



## Install
Maju is a rubygem package, and it can be installed via gem install command

```sh
gem install maju
```

or you can add to your Gemfile

```sh
gem maju
```
and then run 

```sh
bundle install
```


## Configuration
After instalation and before usage, you need to create a account on[Open Weather Site](https://openweathermap.org/) and gerenate a API key. To create an API key, follow the steps in [this tutorial](https://openweathermap.org/guide)

After get your API KEY, you need to start a maju client.

```ruby
 client = Maju::Client.new(api_token: 'YOUR_API_KEY_HERE', lang: 'pt_BR', unit: 'celsius')
```

Now you will use the instance 'client' to call all public method


## Usage
To get today information about weather. 

You need to pass city name with params 'city'

```ruby
 client.current(city: 'Monte Santo de Minas')
```

or to pass a lat and long cordinates

```ruby
 client.current(lat: '-21.2049202', long: '-47.0943532')
```

If you don't know lat and long from city, use geocode method.

## Geocode
if you need to find out lat and long of some city you can use geocode method
```ruby
 client.geocode(city: 'Monte Santo de Minas')
```


it will returns the array. 

NOTE: if the return contains only one object, that is, only one city was found, it will return a direct object. If there is more than one city, an array containing objects will be returned, in the same structure.

```json
[
    {
        "name": "Mococa",
        "lat": -21.464731,
        "lon": -47.002405,
        "country": "BR",
        "state": "São Paulo"
    }
]
```


## Forecasts
To get forecast for the days ahead, you can use the forecast method. If you don't know lat and long informations, use the geocode method.

```ruby
 client.forecast(lat: '-21.2049202', long: '-47.0943532')
```

## License
StringHelper is available under the MIT license.


