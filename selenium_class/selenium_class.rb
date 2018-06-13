require "selenium-webdriver"
require "faker"

class SeleniumQaToolsForm


  def initialize
    @practice_form_url = "http://toolsqa.com/automation-practice-form/"
    @firstname_field = 'firstname'
    @lastname_field = 'lastname'

    @chrome_driver = Selenium::WebDriver.for :chrome
    @chrome_driver.get(@practice_form_url)
  end

  def fill_in_firstname
    p @chrome_driver.find_element(:name, @firstname_field).send_keys("#{Faker::Name.first_name}")
  end

  def fill_in_lastname
    @chrome_driver.find_element(:name, @lastname_field).send_keys("#{Faker::Name.last_name}")
  end

  def select_gender
    @chrome_driver.find_element(:name, 'sex').click
  end
  def select_experience
    @chrome_driver.find_element(:id, "exp-0").click
  end
  def fill_in_date
    @chrome_driver.find_element(:id, "datepicker").send_keys("#{Faker::Date.backward(14)}")
  end

  def select_profession
    @chrome_driver.find_element(:id, "profession-1").click
  end

  # def download_file
  #   @chrome_driver.find_element(:link, "Test File to Download").click
  # end

  def select_automationtool
    @chrome_driver.find_element(:id, "tool-1").click
  end

  def select_continents
    element = @chrome_driver.find_element(:id,"continents")
    @select=Selenium::WebDriver::Support::Select.new(element)
    @select.select_by(:text, "Europe")
  end

  def select_selenium_commands
    element = @chrome_driver.find_element(:id,"selenium_commands")
    @select=Selenium::WebDriver::Support::Select.new(element)
    @select.select_by(:text, "Wait Commands")
    sleep 5
  end

  def click_button
    @chrome_driver.find_element(:class, "button").click
    sleep 5
  end






  def run
    fill_in_firstname
    fill_in_lastname
    select_gender
    select_experience
    fill_in_date
    select_profession
    select_automationtool
    select_continents
    select_selenium_commands
    sleep 4
  end
end


testing = SeleniumQaToolsForm.new
testing.run
