# frozen_string_literal: true

class UserAddRole < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :role, :string
  end
end
