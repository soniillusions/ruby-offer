# frozen_string_literal: true

class AddUsername < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end
