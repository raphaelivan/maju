module Maju::Errors
  def self.api_token_blank
    raise "API-TOKEN: Need to configure api_token. Use: Maju::Client.new(api_token: <YOUR_API_TOKEN>)"
  end


  def self.city_geocode_blank
    raise "Provider city or lat log params. Use: {city: 'Mococa', lat: 'xxxxx', long: 'xxxxxx'} "
  end
end