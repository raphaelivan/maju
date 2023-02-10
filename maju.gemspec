# frozen_string_literal: true

require_relative "lib/maju/version"

Gem::Specification.new do |spec|
  spec.name = "maju"
  spec.version = Maju::VERSION
  spec.authors = ["Raphael Ivan"]
  spec.email = ["eu@rpha.me"]

  spec.summary = "Get weather informations from OpenWeather"
  spec.description = "Get weather information directly from the console or easily integrate your application with OpenWeather"
  spec.homepage = "https://rubygems.org/gems/maju"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/raphaelivan/maju"
  spec.metadata["changelog_uri"] = "https://github.com/raphaelivan/maju"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
