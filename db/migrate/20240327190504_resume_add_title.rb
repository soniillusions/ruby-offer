# frozen_string_literal: true

class ResumeAddTitle < ActiveRecord::Migration[7.1]
  def change
    add_column :resumes, :title, :string
  end
end
