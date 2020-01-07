# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @post = Post.new
    @user_posts = current_user.posts
  end

  def create
    @user = current_user
    @post = @user.posts.build(post_params)
    @post.save
    redirect_to posts_path
  end

  def show; end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:post_text, :user_id)
  end
end
