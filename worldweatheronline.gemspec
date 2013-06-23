# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "worldweatheronline"
  spec.version       = "0.0.1"
  spec.authors       = ["Stefan Wienert"]
  spec.email         = ["stwienert@gmail.com"]
  spec.description   = %q{Slim API Client for world weather online forecast}
  spec.summary       = %q{Slim API Client for world weather online forecast}
  spec.homepage      = "https://www.github.com/zealot128/ruby-worldweatheronline"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
  spec.add_dependency "activesupport"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
