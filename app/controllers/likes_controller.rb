class LikesController < ApplicationController
    def create
      if already_liked?
        flash[:notice] = "You can't like more than once"
      else
        post = Post.find(params[:post_id])
        @like = post.likes.build(like_params)
        @like.save
      end
      redirect_to posts_path
    end

    def liked?(post)
      
    end

    private
      def like_params
        params.permit(:user_id, :post_id)
      end

      def already_liked?
        Like.where(user_id: current_user.id, post_id: params[:post_id]).exists?
      end
end
