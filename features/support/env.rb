require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |app|
  app.default_driver = :selenium_chrome
end
