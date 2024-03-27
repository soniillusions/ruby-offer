class ResumeAddCityAndSalary < ActiveRecord::Migration[7.1]
  def change
    add_column :resumes, :city, :string
    add_column :resumes, :salary, :string
  end
end
