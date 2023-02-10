require 'json'

module Maju::Helpers
	def api_url_base
		"https://api.openweathermap.org"
	end

	def api_url_current
		"#{api_url_base}/data/2.5/weather?"
	end

	def api_url_forecast
		"#{api_url_base}/data/2.5/forecast?"
	end

	def headers
		{}
	end	

	def json(json)
		JSON.parse(json)
	end
end