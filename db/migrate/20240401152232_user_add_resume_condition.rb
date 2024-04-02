class UserAddResumeCondition < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :resume_condition, :integer
  end
end
