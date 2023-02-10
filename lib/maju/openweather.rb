require_relative 'open_weather_helper'
require 'rest-client'

module Maju
	class Client
		attr_accessor :token, :lang, :unit

		include OpenWeatherHelper
		def initialize(options)
			@token   = options[:api_token]
			@lang = options[:lang] ? options[:lang] : 'en'
			@unit   = check_metric(options[:unit].to_s)

		  Maju::Errors.api_token_blank if !@token || @token.empty?
		end

		def current(params)
			url = api_url_current + parsed_params(params)

			response = RestClient.get(url, headers)
			json(response)
		end

		private
		def parsed_params(params)
			"?lang=#{@lang}&units=#{@unit}&q=#{params[:city]}&appid=#{@token}"
		end

		def validated_params

		end

		def check_metric(metric)
			case metric.downcase
			when 'celsius'
				'metric'
			when	'fahrenheit'
				'imperial'
			when 'Kelvin'
				'standard'
			else
				'metric'
			end
		end
	end
end

# Usage
# openweather = Maju::Client.new( unit: 'Celsius', lang: 'pt_br', api_token: "ba225ce2ecbd1c35f2f4204108023a66" )
# openweather.current(city: '' )