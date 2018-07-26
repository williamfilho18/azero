require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'poltergeist'

@browser = ENV['BROWSER']

if @browser.eql?('phantomjs')
  Capybara.register_driver :selenium do |app|
    Capybara::Poltergeist::Driver.new(app, { js_errors: false })
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'https://mark7.herokuapp.com'
end

Capybara.default_max_wait_time = 10
