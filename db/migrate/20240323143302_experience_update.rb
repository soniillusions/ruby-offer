class ExperienceUpdate < ActiveRecord::Migration[7.1]
  def change
    remove_column :resumes, :experience
    add_column :resumes, :years_of_experience, :inreger
    add_column :resumes, :months_of_experience, :inreger
  end
end
