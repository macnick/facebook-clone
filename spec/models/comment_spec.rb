# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Comment, type: :model do
  before(:all) do
    @comment = Comment.new(comment_text: 'this is a test', post_id: 1, user_id: 1)
  end

  context 'validates comment field' do
    it 'is not valid without a comment text' do
      @comment.comment_text = nil
      @comment.save
      expect(@comment.errors.full_messages).to include("Comment text can't be blank")
      @comment.comment_text = 'Some text for the comment'
    end

    it 'is not valid without a user_id' do
      @comment.user_id = nil
      @comment.save
      expect(@comment.errors.full_messages).to include('User must exist')
    end

    it 'is not valid without a post_id' do
      @comment.post_id = nil
      @comment.save
      expect(@comment.errors.full_messages).to include('Post must exist')
    end
  end
end
