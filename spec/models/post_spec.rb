# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:all) do
    @post = Post.new(post_text: 'Some text for the post', user_id: 4)
  end

  context 'validates post fields' do
    it 'is not valid without a post text' do
      @post.post_text = nil
      @post.save
      expect(@post.errors.full_messages).to include("Post text can't be blank")
      @post.post_text = 'Some text for the post'
    end

    it 'is not valid without a user_id' do
      @post.user_id = nil
      @post.save
      expect(@post.errors.full_messages).to include('User must exist')
      @post.user_id = 1
    end
  end
end
