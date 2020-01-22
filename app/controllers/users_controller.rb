# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
    @friendship = Friendship.new
  end

  def show
    @user = User.find(current_user.id)
  end

  def friends
  end
end
