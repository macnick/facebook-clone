# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @post = Post.new
  end

  def create
    @user = current_user
    @post = @user.posts.build(post_params)
    @post.save
    redirect_to posts_path
  end

  def show; end

  private

  def post_params
    params.require(:post).permit(:post_text, :user_id)
  end
end
