require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec' 
require 'site_prism'
require 'pry'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environment/#{ENVIRONMENT}.yml")
puts ENVIRONMENT_CONFIG # {"url"=>"https://www.google.com.br"}
URL = ENVIRONMENT_CONFIG['url']

Capybara.register_driver :my_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('--incognito --start-maximized --ignore-ssl-errors --ignore-certificate-errors --disable-popup-blocking --no-sandbox --acceptInsecureCerts=true --disable-gpu --disable-translate --disable-impl-side-painting --debug_leveç=3')
  
  if ENV['HEADLESS']
    options.add_argument('--headless --disable-site-isolation-trials')
  end

  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 90
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

Capybara.default_driver = :my_chrome
Capybara.app_host = URL
Capybara.default_max_wait_time = 10


