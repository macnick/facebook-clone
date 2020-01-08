# frozen_string_literal: true

require 'spec_helper'

feature 'User signs up and logs in' do

  scenario 'user can  log in using the log in form' do
      visit 'users/sign_in'
      fill_in 'Email', with: 'nick@test.com'
      fill_in 'Password', with: 'foobar'
      click_button 'Log in'
      expect(page).to have_content('Signed in successfully.')
      click_link 'Sign out'
  end

  scenario 'user can  create an account using the signup form' do
    visit '/users/sign_up'
    fill_in 'First name', with: 'Nicks'
    fill_in 'Last name', with: 'Harasm'
    fill_in 'Email', with: 'nick@test1.com'
    fill_in 'Password', with: 'foobar'
    fill_in 'Password confirmation', with: 'foobar'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully')
  end

 

end