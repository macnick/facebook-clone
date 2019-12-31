# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  # before :each do
  #   @user = User.new(first_name: 'Daniel', last_name: 'Addo', email: 'addo@gmail.com', password: 'foobar').save
  # end

  context ' validates #first_name ' do
    it ' ensures first name presence ' do
      first_name = User.new(first_name: 'Daniel', last_name: 'Addo', email: 'addo@gmail.com', password: 'foobar').save
      first_name.valid?
      expect(first_name).to eq(true)
    end
  end

  # context ' validates #first_name' do
  #   it ' check presence of #first_name' do
  #     @user.first_name = ''
  #     @user.valid?
  #     expect(@user.errors.full_messages[:first_name]).to include("can't be blank")

  #     @user.first_name = 'Daniel'
  #     @user.valid?
  #     expect(@user.errors.full_messages[:first_name]).to_not include("can't be blank")
  #   end
  # end

  # context ' validates #last_name' do
  #   it ' check presence of #last_name' do
  #     @user.last_name = ''
  #     @user.valid?
  #     expect(@user.errors.full_messages[:last_name]).to include("can't be blank")

  #     @user.last_name = 'Addo'
  #     @user.valid?
  #     expect(@user.errors.full_messages[:last_name]).to_not include("can't be blank")
  #   end
  # end

  # context ' validates #email' do
  #   it ' check presence of #email' do
  #     @user.email = ''
  #     @user.valid?
  #     expect(@user.errors.full_messages[:email]).to include("can't be blank")

  #     @user.email = 'addo@gmail.com'
  #     @user.valid?
  #     expect(@user.errors.full_messages[:email]).to_not include("can't be blank")
  #   end

  #   it 'check the format of email address' do
  #     @user.email = 'addo.com'
  #     @user.valid?
  #     expect(@user.errors.full_messages[:email]).to include('is invalid')

  #     @user.email = 'addo@gmail.com'
  #     @user.valid?
  #     expect(@user.errors.full_messages[:email]).to_not include('is invalid')
  #   end
  # end

  # context 'validates #password' do
  #   it ' check if #password is presence ' do
  #     @user.password = ''
  #     @user.valid?
  #     expect(@user.errors.full_messages[:password]).to include("can't be blank")

  #     @user.password = 'foobar'
  #     @user.valid?
  #     expect(@user.errors.full_messages[:password]).to_not include("can't be blank")
  #   end

  #   it ' check #password confirmation ' do
  #     @user.password = 'foobar'
  #     @user.password_confirmation = 'barfoo'
  #     @user.valid?
  #     expect(@user.errors.full_messages[:password_confirmation]).to include("doesn't match password")

  #     @user.password = 'foobar'
  #     expect(@user.valid?).to eq(true)
  #   end
  # end
end
