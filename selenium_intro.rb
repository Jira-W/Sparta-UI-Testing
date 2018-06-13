require 'selenium-webdriver'

# create chrome webdriver

chrome_driver = Selenium::WebDriver.for :chrome
chrome_driver.get("http://toolsqa.com/automation-practice-form/")

chrome_driver.find_element(:name, 'firstname').displayed?

chrome_driver.find_element(:name, 'firstname').send_keys('test')

chrome_driver.find_element(:name, 'lastname').send_keys('testagain')

chrome_driver.find_element(:name, 'sex').click



sleep 4
