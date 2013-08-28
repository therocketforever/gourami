ENV['RACK_ENV'] = 'test'

require 'bundler'

Bundler.require(:default, :development, :test)

#require File.join(File.dirname(__FILE__), '..', '..', 'lib/mock.rb')

require 'capybara'
require 'capybara/cucumber'
#require 'rspec'

Capybara.app = eval("Rack::Builder.new {( " + File.read(File.dirname(__FILE__) + '/../../config.ru') + "\n )}")

class World
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  World.new
end