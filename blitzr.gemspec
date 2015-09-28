# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blitzr/version'

Gem::Specification.new do |spec|
  spec.name          = 'blitzr'
  spec.version       = Blitzr::VERSION
  spec.authors       = ['Grégoire Colson']
  spec.email         = ['gregoire.colson@1d-lab.eu']

  spec.summary       = 'A Ruby client for the Blitzr API'
  spec.description   = 'A Ruby client for the Blitzr API'
  spec.homepage      = 'https://github.com/craftsmen/niland-blitzr-ruby'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency  'httparty'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
end
