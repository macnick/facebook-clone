require 'rails_helper'

RSpec.describe Like, type: :model do
  before(:all) do
    @like = Like.new(user_id: 1, post_id: 1)
  end

  context 'validates like record' do

    it 'is not valid without a user_id' do
      @like.user_id = nil
      @like.save
      expect(@like.errors.full_messages).to include('User must exist')
    end

    it 'is not valid without a post_id' do
      @like.post_id = nil
      @like.save
      expect(@like.errors.full_messages).to include('Post must exist')
    end
  end
end
