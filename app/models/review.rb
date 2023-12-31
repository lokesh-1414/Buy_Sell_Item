# frozen_string_literal: true

# This is a sample class representing an Review Model.
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :content, presence: true
  validates :rating, presence: true,
                     numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
