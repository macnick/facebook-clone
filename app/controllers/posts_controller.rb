# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @post = Post.new
    @user_posts = Post.order(id: :desc) # current_user.posts
    @comment = Comment.new
    @like = Like.new
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to posts_path
  end

  def show; end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def liked? 
    Like.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end

  private

  def post_params
    params.require(:post).permit(:post_text)
  end
end
