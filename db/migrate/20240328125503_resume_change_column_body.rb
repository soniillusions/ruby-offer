# frozen_string_literal: true

class ResumeChangeColumnBody < ActiveRecord::Migration[7.1]
  def up
    change_column :resumes, :body, :text
  end

  def down
    change_column :resumes, :body, :string
  end
end
