require 'rspec'

$:.unshift(File.dirname(__FILE__) + '/lib')
require 'blitzr'

SPEC_ROOT = File.expand_path("../", __FILE__)

require SPEC_ROOT + '/support/webmock'
require SPEC_ROOT + '/support/helpers'
