# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'farmsense_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "farmsense_wrapper"
  spec.version       = FarmsenseWrapper::VERSION
  spec.authors       = ["cohart"]
  spec.email         = ["me@colin-hart.com"]
  spec.summary       = %q{A wrapper for the Farmsense API, which provides day lengths, frost dates, and moon phases}
  spec.description   = %q{This wrapper currently only provides methods for returning nearest weather stations and frostdates for said stations in json format}
  spec.homepage      = "https://github.com/cohart/farmsense_wrapper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]



  spec.add_development_dependency 'bundler', "~> 1.6"
  spec.add_development_dependency 'rake', '~> 10.3.2'
  spec.add_development_dependency 'rspec-core', '~> 3.0.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_dependency 'httparty', '~> 0.13.1'
end
