
module FriendshipsHelper 
  def delete_button(friend)
    button_to 'delete', friendship, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger btn-sm'
  end

  def unconfirmed_requests
    current_user.inverse_friendships.where(confirmed: false)
  end

  def confirm_friend(f)
    if f.confirmed == false
      render partial: 'friendships/confirmed', locals: { f: f}
    end
  end
end
