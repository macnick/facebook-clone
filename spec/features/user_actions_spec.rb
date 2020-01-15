# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

def rnd_str
  (0...8).map { rand(97..122).chr }.join.capitalize
end

fname = rnd_str

feature 'User' do
  scenario 'can create an account using the signup form' do
    visit '/users/sign_up'
    fill_in 'First name', with: fname
    fill_in 'Last name', with: rnd_str
    fill_in 'Email', with: "#{fname}@test.com"
    fill_in 'Password', with: 'foobar'
    fill_in 'Password confirmation', with: 'foobar'
    click_button 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully')
  end

  scenario 'can log in using the log in form' do
    visit '/users/sign_in'
    fill_in 'Email', with: "#{fname}@test.com"
    fill_in 'Password', with: 'foobar'
    click_button 'Log in'
    expect(page).to have_content('Signed in successfully.')
  end
end

feature 'User also' do
  # scenario 'can create a post' do
  #   visit '/users/sign_in'
  #   fill_in 'Email', with: "#{fname}@test.com"
  #   fill_in 'Password', with: 'foobar'
  #   click_button 'Log in'
  #   visit '/posts'
  #   fill_in 'post_post_text', with: 'This is a test post'
  #   click_button 'Create Post'
  #   expect(page).to have_content('This is a test post')
  # end

  feature 'Comments can be created' do
    scenario 'successfully' do
      visit '/users/sign_in'
      fill_in 'Email', with: "#{fname}@test.com"
      fill_in 'Password', with: 'foobar'
      click_button 'Log in'
      visit '/posts/'
      fill_in 'Comment', with: 'This is a test comment'
      click_button 'Create Comment'
      expect(page).to have_content('This is a test comment')
    end
  end
  
end
