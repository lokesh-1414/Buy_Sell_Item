# frozen_string_literal: true

# This is a class
class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :uid, :string
    add_column :users, :provider, :string
    add_column :users, :admin, :boolean, default: false
  end
end
