# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

feature 'User can like post' do
  scenario 'successfully' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'nick@test.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    visit '/posts'
    click_button 'like-1'
    expect(page).to have_text('1')
  end
end
