# frozen_string_literal: true

require 'spec_helper'

feature 'User signs up and logs in' do

  scenario 'user can  create an account using the signup form' do
    visit '/users/sign_up'
    fill_in 'first_name', with: 'Nick'
    fill_in 'last_name', with: 'Haras'
    fill_in 'email', with: 'nick@test.com'
    fill_in 'password', with: 'foobar'
    fill_in 'password_confirmation', with: 'foobar'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully')
  end

  scenario 'user can  log in using the log in form' do
    visit 'users/sign_in'
    fill_in 'email', with: 'nick@test.com'
    fill_in 'password', with: 'foobar'
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully')
  end

end