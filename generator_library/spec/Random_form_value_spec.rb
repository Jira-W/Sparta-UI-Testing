require 'spec_helper'

describe 'testing the random form value generator' do

    before(:all) do
      @gen = Generator.new.form_generator_value
      @VALID_EMAIL_REGEX  = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    end

  context 'Check generator library' do

    it 'should generate a firstname' do
     expect(@gen.firstname_gen).to be_kind_of(String)
    end
    it 'should generate a lastname' do
     expect(@gen.lastname_gen).to be_kind_of(String)
    end
    it 'should generate a country' do
     expect(@gen.country_gen).to be_kind_of(String)
    end
    it 'should generate a phone number string' do
     expect(@gen.phonenum_gen).to be_kind_of(String)
    end
    it 'should generate a phone number of 12 digit' do
     expect(@gen.phonenum_gen.length).to eq 12
    end
    it 'should generate an email' do
     expect(@gen.email_gen).to be_kind_of(String).and include("@").and match(@VALID_EMAIL_REGEX)
    end
    it 'should generate a password' do
     expect(@gen.password_gen).to be_kind_of(String)
    end
    it 'should generate a password of length between 10 -12' do
     expect(@gen.password_gen.length).to be_between(10, 12)
    end
    it 'should generate a paragraph string' do
     expect(@gen.para_gen).to be_kind_of(String)
    end
    it 'should generate a number between 1-12' do
     expect(@gen.month_gen).to be_between(1,12)
    end
    it 'should generate a number between 1-31' do
     expect(@gen.day_gen).to be_between(1,31)
    end
    it 'should generate a number between 1950 - 2014' do
     expect(@gen.year_gen).to be_between(1950,2014)
    end
    it 'should generate a number marital status string' do
     expect(@gen.marital_gen).to be_kind_of(String).and match(/\bsingle|married|divorced\b/)
    end
    it 'should generate a number hobby  string' do
     expect(@gen.hobby_gen).to be_kind_of(String).and match(/\bdance|reading|[cricket\s]\b/)
    end
  end

end
