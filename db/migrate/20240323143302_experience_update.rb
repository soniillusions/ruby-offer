# frozen_string_literal: true

class ExperienceUpdate < ActiveRecord::Migration[7.1]
  def up
    remove_column :resumes, :experience, :integer
    add_column :resumes, :years_of_experience, :integer
    add_column :resumes, :months_of_experience, :integer
  end

  def down
    add_column :resumes, :experience, :integer
    remove_column :resumes, :years_of_experience, :integer
    remove_column :resumes, :months_of_experience, :integer
  end
end
