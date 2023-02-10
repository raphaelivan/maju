require 'rest-client'
require_relative 'support/helpers'
require_relative 'support/error'

module Maju
	class Client		
		include Maju::Helpers

		attr_accessor :token, :lang, :unit

		def initialize(options)
			@token   = options[:api_token]
			@lang = options[:lang] ? options[:lang] : 'en'
			@unit   = check_metric(options[:unit].to_s)

		  Maju::Errors.api_token_blank if !@token || @token.empty?
		end

		def current(params)
		  Maju::Errors.city_geocode_blank if params[:city].nil? && params[:lat].nil?
		
			url = api_url_current(params)
			response = RestClient.get(url, headers)
			json(response)
		end


		def forecast(params)
		  Maju::Errors.city_geocode_blank if params[:city].nil? && params[:lat].nil?

			url = api_url_forecast(params)
			response = RestClient.get(url, headers)
			json(response)
		end
	end
end