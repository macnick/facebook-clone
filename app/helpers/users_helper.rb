# frozen_string_literal: true

module UsersHelper
  
  def friend_requests
    inverse_friendships.map { |f| f.user if !f.confirmed }.compact
  end

  def request_sent user
    render '/users/add_friend' if friendship.include? user && !friendship.confirmed
  end
end
