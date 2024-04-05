class ResumeChangeColumnBody < ActiveRecord::Migration[7.1]
  def change
    change_column :resumes, :body,  :text
  end
end
