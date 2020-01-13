class LikesController < ApplicationController
    def create
      post = Post.find(params[:post_id])
      @like = post.likes.build(like_params)

      @like.save
      redirect_to posts_path
    end

    def liked?(post)
      
    end

    private
      def like_params
        params.permit(:user_id, :post_id)
      end
end
