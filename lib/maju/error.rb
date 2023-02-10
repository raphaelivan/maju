module Maju::Errors
  def self.api_token_blank
    raise "API-TOKEN: Need to configure api_token. Use: Maju::Client.new(api_token: <YOUR_API_TOKEN>)"
  end
end