require_relative 'helpers'
require_relative 'error'

module OpenWeatherHelper
	include Maju::Helper


	def api_url_base
		"https://api.openweathermap.org"
	end

	def api_url_current
		"#{api_url_base}/data/2.5/weather?"
	end

	def headers
		{}
	end	
end