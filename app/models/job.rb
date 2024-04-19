class Job < ApplicationRecord
  validates :title, presence: true, length: { maximum: 150 }

  belongs_to :user
end
