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

```sh
 client = Maju::Client.new(api_token: 'YOUR_API_KEY_HERE')
```



## Usage
Get today information about weather. You need to pass city name params 

```sh
 client.current(city: 'Monte Santo de Minas')
```
or to pass lat and long cordinates

```sh
 client.current(lat: '-21.2049202', long: '-47.0943532')
```


## Forecasts collection
To get forecast for the days ahead, you can use the forecast method

```sh
 client.forecast(city: 'Monte Santo de Minas')
```
or to pass lat and long cordinates

```sh
 client.current(lat: '-21.2049202', long: '-47.0943532')
```
the forecast method accept the :days_count params, which will limit the number of days. Maximum limit: 15 days

```sh
 client.current(city: 'Monte Santo de Minas', days_count: 5)
```


## License
StringHelper is available under the MIT license.


