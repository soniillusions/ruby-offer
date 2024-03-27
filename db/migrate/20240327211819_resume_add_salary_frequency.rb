class ResumeAddSalaryFrequency < ActiveRecord::Migration[7.1]
  def change
    add_column :resumes, :salary_frequency, :string
  end
end
