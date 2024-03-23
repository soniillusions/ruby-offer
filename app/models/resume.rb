class Resume < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :years_of_experience, presence: true, numericality: { greater_than: -1, less_than: 41 }
  validates :months_of_experience, presence: true, numericality: { greater_than: -1, less_than: 13 }
  validates :telegram_link, url: true
  validates :github_link, url: true, presence: true
  validates :body, presence: true, length: { maximum: 1062 }
end
