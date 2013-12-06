require 'spec_helper'


describe "The Login Page" do
  before(:each) do
    visit '/'
  end

  it "says 'Welcome to Hash Love" do
    expect(page).to have_content("Welcome to Hash Love")
  end

  it "has an email input field and button labled 'Get Started'" do
    expect(page).to have_field('email')
  end

  it "has a button labled 'Get Started'" do
      expect(page).to have_button('Get Started')
  end





end
