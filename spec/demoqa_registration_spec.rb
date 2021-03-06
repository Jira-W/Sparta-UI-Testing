require 'spec_helper'


describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
    @randomFormValue = Generator.new.form_generator_value
    @firstname = @randomFormValue.firstname_gen
    @lastname = @randomFormValue.lastname_gen
    p @country = @randomFormValue.country_gen
    @phone_num = @randomFormValue.phonenum_gen
    @email = @randomFormValue.email_gen
    @username = @randomFormValue.username_gen
    @about_yourself = @randomFormValue.para_gen
    @password = @randomFormValue.password_gen
    @month_num = @randomFormValue.month_gen
    @day_num = @randomFormValue.day_gen
    @year_num = @randomFormValue.year_gen
    @marital_option = @randomFormValue.marital_gen
    @hobby_option = @randomFormValue.hobby_gen
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field(@firstname)
    end
    it 'should input first name' do
      expect(@driver.get_first_name_field_value).to eq @firstname
    end
  #
    it 'should accept a last name' do
      @driver.set_last_name_field(@lastname)
      @driver.get_last_name_field_value
      @driver.last_name_field_displayed
    end
    it 'should input a last name' do
      expect(@driver.get_last_name_field_value).to eq @lastname
    end
  #
    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option(@marital_option)
    end
  #
    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option(@hobby_option)
    end
    it 'should select a hobby status selection of the new input' do
      @driver.check_select_hobby_option(@hobby_option)
    end
  #
    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eq 'Afghanistan'
    end
    it 'should accept a new country value' do
      # if @country.match(" ")
      #   @driver.country_dropdown_list_select('Japan')
      # else
        @driver.country_dropdown_list_select(@country)

    end
    it 'accept a new DOB' do
      @driver.dob_month_list_select(@month_num)
      @driver.dob_day_list_select(@day_num)
      @driver.dob_year_list_select(@year_num)
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field(@phone_num)
      expect(@driver.get_phone_number_field_value).to eq @phone_num
    end

    it 'should accept a username' do
      @driver.set_user_name_field(@username)
      expect(@driver.get_user_name_field_value).to eq @username
    end
    it 'should accept a email' do
      @driver.set_email_field(@email)
    end
    it 'the value of email should be the input email' do
      expect(@driver.get_email_field_value).to eq @email
    end
  #
    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field(@about_yourself)
      expect(@driver.get_about_yourself_value).to eq @about_yourself
    end

    it 'should accept a password ' do
      @driver.set_password_field(@password)
      expect(@driver.get_password_value).to eq @password
    end
  #
    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field(@password)
      expect(@driver.get_confirmation_password_value).to eq @password
    end
    it 'should submit registration form' do
      @driver.click_submit
    end
    it 'should display registration successful message'do
      @driver.check_registration_successful
    end
    it 'should display registration successful message'do
      @driver.check_registration_successful
    end
end

end
