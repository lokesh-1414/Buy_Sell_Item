# frozen_string_literal: true

# This is a sample class representing an  Category Model.
class Category < ApplicationRecord
  has_many :items, dependent: :destroy

  validates :name, presence: true, length: { maximum: 20 }, uniqueness: true
end
