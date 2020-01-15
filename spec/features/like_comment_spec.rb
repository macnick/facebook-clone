# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

feature 'User can like post' do
  scenario 'successfully' do
    visit '/users/sign_in'
    fill_in 'Email', with: "nick@test.com"
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit '/posts'
    click_button 'button-2'
    expect(page).to have_content('This is a test comment')
  end

end
