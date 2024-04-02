class UserResumeConditionDefault < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :resume_condition, 0
  end
end
