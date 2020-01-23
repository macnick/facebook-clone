# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Friendship, type: :model do
  before :each do
    @user1 = User.create(first_name: 'daniel', last_name: 'addo', email: 'daniel@test.com', password: '123456')
    @user2 = User.create(first_name: 'nick', last_name: 'haras', email: 'nick@test.com', password: '123456')
  end

  describe '#sender' do
    it 'have receiver' do
      request = @user2.friendships.build
      request.valid?
      expect(request.errors.full_messages).to include('Friend must exist')

      request = Friendship.new(user_id: @user1.id, friend_id: @user2.id)
      expect(request.valid?).to be(true)
      expect(request.errors.full_messages).to be_empty
    end

    it 'creates friendship request' do
      request = Friendship.new(user_id: @user1.id, friend_id: @user2.id)
      expect(request.valid?).to be(true)
      expect(request.user_id).to be @user1.id
    end
  end
end
