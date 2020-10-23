require 'appium_lib'
require 'appium_console'
require 'rspec'
require 'pry'
require 'yaml'
require 'selenium/webdriver'
require 'rspec/expectations'

appium_caps = File.join(File.dirname(__FILE__), '..', '..', 'appium.txt')
caps = Appium.load_settings file: appium_caps, verbose: true
$driver = Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object