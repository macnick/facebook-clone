# frozen_string_literal: true

module PostsHelper
  def delete_button(user_post)
    return unless current_user.id == user_post.user.id

    button_to 'delete', user_post, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger btn-sm'
  end

  def post_comments(user_post)
    @comments = user_post.comments
    render partial: 'comments/comments' # , collection: @comments
  end
end
