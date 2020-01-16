# frozen_string_literal: true

module CommentsHelper
  def render_comment(user_post)
    render partial: 'comment_post', collection: @comments, locals: { user_post: user_post }
  end
end
