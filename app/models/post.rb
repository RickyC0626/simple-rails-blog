# frozen_string_literal: true

# Model for post
class Post < ApplicationRecord
  has_many :comments
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 4 }
end
