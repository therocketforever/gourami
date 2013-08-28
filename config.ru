require "bundler/setup"
Bundler.require(:default)

require File.expand_path('../application', __FILE__)

run Rack::Cascade.new [Application]