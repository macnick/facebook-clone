# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

feature 'Comments can be created' do
  scenario 'successfully' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'nick@test.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit '/posts'
    fill_in 'comment-1', with: 'This is a test comment'
    click_button 'button-1'
    expect(page).to have_content('This is a test comment')
  end
end
