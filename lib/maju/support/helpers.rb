require 'json'

module Maju::Helpers
	def api_url_base
		"https://api.openweathermap.org"
	end

	def api_url_current(params)
		"#{api_url_base}/data/2.5/weather?" + parsed_params(params)
	end

	def api_url_forecast(params)
		url = "#{api_url_base}/data/2.5/forecast" + parsed_params(params)
		url +="&cnt=#{params[:days_count]}" if params && params[:days_count]
		url
	end

	def headers
		{}
	end	

	def parsed_params(params)
		"?lang=#{@lang}&units=#{@unit}&q=#{params[:city]}&appid=#{@token}"
	end

	def json(json)
		JSON.parse(json)
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