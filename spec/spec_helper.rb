require 'selenium-webdriver'
require_relative '../selenium_demoqa_registration'
require_relative '../generator_library/generator'

RSpec.configure do |config|
  config.formatter = :documentation
end
