require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/poltergeist'


Capybara.configure do |config|
    config.default_driver = :poltergeist
    config.javascript_driver = :poltergeist
    config.app_host = "http://localhost:8888/bbc-cooking-motivation/index.html"
    config.run_server = false
    config.default_wait_time = 10
  end

# DEFAULT: headless tests with poltergeist/PhantomJS
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app)
end

Capybara.default_selector = :css
World(RSpec::Matchers)