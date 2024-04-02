class AddIserIdToResume < ActiveRecord::Migration[7.1]
  def change
    add_reference :resumes, :user, null: true, foreign_key: true
  end
end
