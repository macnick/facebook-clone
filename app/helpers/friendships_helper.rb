# frozen_string_literal: true

module FriendshipsHelper
  def delete_button(_friend)
    button_to 'delete', friendship, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger btn-sm'
  end

  def unconfirmed_requests
    current_user.inverse_friendships.where(confirmed: false)
  end

  def all_friends
    return current_user.friends.size unless current_user.friends.nil?
    0
  end

  def confirm_friend(fri)
    render partial: '/friendships/confirm', locals: { fri: fri } if fri.confirmed == false
  end
end
