# frozen_string_literal: true

class ResumeEmailUpdate < ActiveRecord::Migration[7.1]
  def change
    add_column :resumes, :creator_email, :string
    add_column :resumes, :name, :string
  end
end
