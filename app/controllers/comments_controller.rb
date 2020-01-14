# frozen_string_literal: true

class CommentsController < ApplicationController
  def create
    post = Post.find(params[:post_id])
    @comment = post.comments.build(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to posts_path
  end

  def index; end

  private

  def comment_params
    params.require(:comment).permit(:comment_text, :post_id)
  end
end
