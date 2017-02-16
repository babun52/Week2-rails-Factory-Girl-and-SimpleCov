require 'rails_helper'

describe 'the add a new user process' do
  it 'adds a new user with authentication' do
    visit '/'
    click_link 'Sign Up'
    fill_in 'User name', :with => 'john'
    fill_in 'Email', :with => 'john@john.com'
    fill_in 'Password', :with => '1234'
    fill_in 'Password confirmation', :with => '1234'
    click_on "Sign Up"
    expect(page).to have_content 'Welcome to the site!'
  end

  it 'gives error when form field is left blank' do
    visit new_user_path
    click_on "Sign Up"
    expect(page).to have_content 'There was a problem creating your account. Please try again.'
  end

end
