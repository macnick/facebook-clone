# frozen_string_literal: true

require 'spec_helper'

def rnd_str 
  (0...8).map { (97 + rand(26)).chr }.join.capitalize
end

feature 'User signs up and logs in' do

  scenario 'user can log in using the log in form' do
      visit '/users/sign_in'
      fill_in 'Email', with: 'nick@test.com'
      fill_in 'Password', with: '123456'
      click_button 'Log in'
      expect(page).to have_content('Signed in successfully.')
      click_link 'Sign Out'
  end

  scenario 'user can create an account using the signup form' do
    visit '/users/sign_up'
    fill_in 'First name', with: rnd_str
    fill_in 'Last name', with: rnd_str
    fill_in 'Email', with: "#{rnd_str}@test.com"
    fill_in 'Password', with: 'foobar'
    fill_in 'Password confirmation', with: 'foobar'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully')
  end


end