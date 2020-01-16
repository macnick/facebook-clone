
module FriendshipsHelper 
  def delete_button(friend)
    button_to 'delete', friendship, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger btn-sm'
  end
end
