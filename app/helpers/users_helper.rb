# frozen_string_literal: true

module UsersHelper
  
  def friend_requests
    inverse_friendships.map { |f| f.user if !f.confirmed }.compact
  end

  def request_sent user
    render '/users/add_friend' if friendship.include? user && !friendship.confirmed
  end

  def toggle_button(user)
    if current_user.friendships.where(friend_id: user.id).size  == 0 && current_user.id != user.id
      render partial: 'users/toggle_button', locals: { user: user }
    end      
  end
end
