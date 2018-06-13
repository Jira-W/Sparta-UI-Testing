require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
    end

    it 'should accept a first name' do

    end

    it 'should accept a last name' do

    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do

    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do

    end

    it 'should have a country default of Afhghanistan' do
    end

    it 'accept a new DOB' do

    end

    it 'should accept a new country value' do

    end

    it 'should accept a valid phone number' do

    end

    it 'should accept a username' do

    end

    it 'should accept a about yourself text' do

    end

    it 'should accept a password' do

    end

    it 'should accept a password confirmation' do

    end

  end

end