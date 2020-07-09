# frozen_string_literal: true

# Model for post
class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  # dependent: :destroy will destroy all comments related
  # to the specific post if the post gets deleted as well

  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 4 }
end
