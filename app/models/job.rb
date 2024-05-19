# frozen_string_literal: true

class Job < ApplicationRecord
  validates :title, presence: true, length: { maximum: 150 }

  belongs_to :user
end
