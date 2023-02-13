# StringHelpers
Get weather informations from OpenWeather

## Install

```sh
gem install maju
```
or add to your Gemfile

```sh
gem maju
```

## Configuration
Before usage, you need to create a account on[Open Weather Site](https://openweathermap.org/) and gerenate a API key. To create an API key, follow the steps in [this tutorial](https://openweathermap.org/guide)

After get your API KEY, you need to start the client.

```ruby
 client = Maju::Client.new(api_token: 'YOUR_API_KEY_HERE')
```



## Usage
Get today information about weather. You need to pass city name params 

```ruby
 client.current(city: 'Monte Santo de Minas')
```
or to pass lat and long cordinates

```ruby
 client.current(lat: '-21.2049202', long: '-47.0943532')
```

## Geocode

if you need to find out lat and long of some city you can use geocode method
```ruby
 client.geocode(city: 'Monte Santo de Minas')
```
will returns: 

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
 client.current(lat: '-21.2049202', long: '-47.0943532')
```


## License
StringHelper is available under the MIT license.


