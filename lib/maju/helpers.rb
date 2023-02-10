require 'json'
module Maju::Helper	
	def json(json)
		JSON.parse(json)
	end
end