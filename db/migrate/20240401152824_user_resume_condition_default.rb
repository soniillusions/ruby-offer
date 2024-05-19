# frozen_string_literal: true

class UserResumeConditionDefault < ActiveRecord::Migration[7.1]
  def change
    change_column_default :users, :resume_condition, from: nil, to: 0
  end
end
