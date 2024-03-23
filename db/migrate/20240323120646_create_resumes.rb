class CreateResumes < ActiveRecord::Migration[7.1]
  def change
    create_table :resumes do |t|
      t.string :creator
      t.integer :experience
      t.string :resume_link
      t.string :github_link
      t.string :telegram_link
      t.string :body

      t.timestamps
    end
  end
end
