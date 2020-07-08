# frozen_string_literal: true

# Model for post
class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5 }
end
