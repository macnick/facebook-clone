class FriendshipsController < ApplicationController
  def new
    @friendship = Friendship.new
  end

  def index
    @friendships = current_user.friendships
    @inverse_friendships = current_user.inverse_friendships
  end

  def create
    user = User.find(params[:friend_id])
    @friendship = Friendship.create(user_id: current_user.id, friend_id: user.id, confirmed: false)
    # @friendship = current_user.friendships.build(friend_params) 
    if @friendship.save
      flash[:success] = "Friend request sent successufully"
    else
      flash[:danger] = "Can not send friend request"
    end
    redirect_to users_path
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    if @friendship.destroy
      flash[:success] = "Friend request cancelled"
    else
      flash[:danger] = "An unknown error occured please try again"
    end
    redirect_to friendships_path
  end


  private


end