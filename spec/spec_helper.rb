require "maju"
ENV['API_OPENWEATHER_TOKEN']="ba225ce2ecbd1c35f2f4204108023a66"

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"
  config.disable_monkey_patching!
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
