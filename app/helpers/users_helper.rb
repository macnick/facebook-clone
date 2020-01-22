# frozen_string_literal: true

module UsersHelper
  def friend_requests
    inverse_friendships.map { |f| f.user unless f.confirmed }.compact
  end

  def request_sent(user)
    render '/users/add_friend' if friendship.include?(user) && !friendship.confirmed
  end

  # def toggle_button(user)
  #     return unless current_user.friendships.where(friend_id: user.id).empty? && 
  #                   current_user.inverse_friendships.where(user_id: user.id).empty? && 
  #                   current_user.id != user.id

  #   render partial: 'users/toggle_button', locals: { user: user }
  # end

  def toggle_button(user)
    if current_user != user
      if current_user.pending_friends.include?(user)
        button_to 'Cancel Request', { controller: 'friendships', action: 'cancel', friend_id: user.id }, method: :post, class: "form-control btn btn-danger mt-1", id:"button-#{user.id}"
      elsif current_user.friendships.where(friend_id: user.id).empty? && current_user.inverse_friendships.where(user_id: user.id).empty?
        button_to 'Add Friend', { controller: 'friendships', action: 'create', friend_id: user }, method: :post, class: "form-control btn btn-success mt-1", id:"button-#{user.id}"
      end
    end
  end
end
