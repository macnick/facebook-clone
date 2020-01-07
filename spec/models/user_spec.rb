# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user1 = User.new(first_name: 'Daniel', last_name: 'Addo', email: 'nick@gmail.com', password: 'foobar')
  end

  context 'validates user fields' do
    it 'is not valid without a first_name' do
      @user1.first_name = nil
      @user1.save
      expect(@user1.errors.full_messages).to include("First name can't be blank")
      @user1.first_name = 'Daniel'
    end

    it 'is not valid without a last_name' do
      @user1.last_name = nil
      @user1.save
      expect(@user1.errors.full_messages).to include("Last name can't be blank")
      @user1.last_name = "Addo"
    end

    it 'is not valid without an email' do
      @user1.email = nil
      @user1.save
      expect(@user1.errors.full_messages).to include("Email can't be blank")
      @user1.email = "test@test.com"
    end

    it 'is not valid without an password' do
      @user1.password = nil
      @user1.save
      expect(@user1.errors.full_messages).to include("Password can't be blank")
      @user1.password = "foobar"
    end

  end

end
