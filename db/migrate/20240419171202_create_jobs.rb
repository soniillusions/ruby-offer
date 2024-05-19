# frozen_string_literal: true

class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company
      t.text :body
      t.integer :salary
      t.string :city
      t.integer :required_exp
      t.integer :user_id

      t.timestamps
    end
  end
end
