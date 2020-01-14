# frozen_string_literal: true

class LikesController < ApplicationController
  def create
    if already_liked?
      like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
      like.destroy
    else
      post = Post.find(params[:post_id])
      @like = post.likes.build(like_params)
      @like.save
    end
    redirect_to posts_path
  end

  private

  def like_params
    params.permit(:user_id, :post_id)
  end

  def already_liked?
    Like.where(user_id: current_user.id, post_id: params[:post_id]).exists?
  end
end
