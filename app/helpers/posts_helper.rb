module PostsHelper
  def delete_button(user_post)
    if current_user.id == user_post.user.id
      return '<input data-confirm="Are you sure?" class="btn btn-danger btn-sm" type="submit" value="delete">'.html_safe
    end
  end
end

