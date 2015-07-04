require 'coveralls'
require 'simplecov'
require 'capybara/rspec'
require 'factory_girl'

require './app/app.rb'

Capybara.app = Chitter

RSpec.configure do |config|

  config.include FactoryGirl::Syntax::Methods
  
end

SimpleCov.formatters = [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
Coveralls.wear!
