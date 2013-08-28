require "bundler/setup"
Bundler.require(:default)

require File.expand_path('../application', __FILE__)

Environment = Sprockets::Environment.new
Environment.append_path 'lib/assets/css'
Environment.append_path 'lib/assets/js/vendor'
Environment.append_path 'lib/assets/img'
Environment.append_path 'lib/public'

run Rack::Cascade.new [Environment, Application]

binding.pry