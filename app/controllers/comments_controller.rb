class CommentsController < ApplicationController
  def create
    post = Post.find(user_post.id)
    @comment = post.comments.build(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to posts_path


    # @post = current_user.posts.build(post_params)
    # @post.save
  
  end

  def index
  end

  private
    def comment_params
      params.require(:comment).permit(:comment_text)
    end
end