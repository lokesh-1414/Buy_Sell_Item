# frozen_string_literal: true

# This is a class
class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
