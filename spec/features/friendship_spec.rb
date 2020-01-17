# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

feature 'User can' do
  scenario 'send friend request successfully' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'nick@test.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit root_path
    click_button 'button-2'
    expect(page).to have_content('Friend request sent successfully')
  end

  scenario 'confirm friend request successfully' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'daniel@test.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit friendships_path
    click_button 'Confirm friend'
    expect(page).to have_content('Friendship confirmed')
  end


end