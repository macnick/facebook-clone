# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :friendships
  has_many :inverse_friendships, class_name:  "Friendship", foreign_key: "friend_id"
  validates :first_name, presence: true
  validates :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  def friends
    friends_array = friendships.map {|f| f.friend if f.confirmed }
    friends_array + inverse_friends.map { |f| f.user if f.confirmed }
    friends_array.compact
  end
end
