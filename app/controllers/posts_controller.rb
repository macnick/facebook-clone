# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    @post = Post.new
    ids = current_user.friends.pluck(:id) << current_user.id
    @user_posts = Post.where(user_id: ids).order(id: :desc)
    @comment = Comment.new
    @like = Like.new
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.save
    redirect_to posts_path
  end

  def show; 
  
  end

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
