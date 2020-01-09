# frozen_string_literal: true

require 'rails_helper'
require 'spec_helper'

feature 'User can create a Post' do
  scenario 'Successfully' do
    visit '/posts/'
    fill_in 'Post', with: 'This is a test post'
    click_button 'Create Post'
    expect(page).to have_content('This is a test post')
  end

end