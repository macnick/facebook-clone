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
      expect(request.errors[:user_id]).to include('must exist')

      request = @user2.friendships.build(sender: @user1)
      expect(request.valid?).to eql(true)
      expect(request.errors[:user_id]).to_not include('must exist')
    end

    it 'creates friendship request' do
      request = @user2.friendships.create(user_id: @user1)

      expect(request.confirm_friend).to eql(false)
      expect(Friendship.last.sender).to eql(@user1)
    end
  end

  describe '#receiver' do
    it 'have sender' do
      request = @user1.friendships.build
      request.valid?
      expect(request.errors[:friend_id]).to include('must exist')

      request = @user1.friendships.build(receiver: @user2)
      expect(request.valid?).to eql(true)
      expect(request.errors[:friend_id]).to_not include('must exist')
    end

    it 'creates friendship request' do
      request = @user1.friendships.create(friend_id: @user2)

      expect(request.confirm_friend).to eql(false)
      expect(Friendship.last.user_id).to eql(@user1)
      expect(Friendship.last.friend_id).to eql(@user2)
    end
  end
end
