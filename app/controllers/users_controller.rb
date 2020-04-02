# frozen_string_literal: true

class UsersController < ApplicationController
  def index
    @users = User.all
    @friendship = Friendship.new
    respond_to do |format|
      format.html # index.html.erb
      # uncomment line below if you want to support xml also
      # format.xml  { render :xml => @users }
      format.json { render :json => @users }
    end
  end

  def show
    @user = User.find(current_user.id)
  end

  def friends; end
end
