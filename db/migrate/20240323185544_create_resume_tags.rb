# frozen_string_literal: true

class CreateResumeTags < ActiveRecord::Migration[7.1]
  def change
    create_table :resume_tags do |t|
      t.references :resume, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
