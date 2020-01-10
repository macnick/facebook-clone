# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :post_text, presence: true, length: { maximum: 100 }
end
