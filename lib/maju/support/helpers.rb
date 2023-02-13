require 'json'

module Maju::Helpers
	def api_url_base
		"https://api.openweathermap.org"
	end

	def api_url_current(params)
		"#{api_url_base}/data/2.5/weather?" + parsed_params(params)
	end

	def api_url_forecast(params)
		days_count = (params[:days_count] && params[:days_count] <= 15) ? params[:days_count] : 15

		url = "#{api_url_base}/data/2.5/forecast" + parsed_params(params)
		url +="&cnt=#{days_count}" if params && params[:days_count]
		url
	end


	def api_url_geocode(params)
		url = "#{api_url_base}/geo/1.0/direct" + parsed_params(params)
		url
	end

	def headers
		{}
	end	

	def parsed_params(params)
		if params[:city]
			"?lang=#{@lang}&units=#{@unit}&q=#{params[:city]}&appid=#{@token}"
		else
			"?lang=#{@lang}&units=#{@unit}&appid=#{@token}&lat=#{params[:lat]}&lon=#{params[:long]}"
		end
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