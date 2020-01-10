class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    @comment.save
    redirect_to posts_path


    # @post = current_user.posts.build(post_params)
    # @post.save
  
  end

  def index
  end

  private
    def comment_params
      params.require(:comment).permit(:comment_text, :post_id)
    end
end