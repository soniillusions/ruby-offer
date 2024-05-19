# frozen_string_literal: true

class Resume < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  validates :title, presence: true, length: { maximum: 150 }
  validates :years_of_experience, presence: true, numericality: { greater_than: -1, less_than: 21 }
  validates :telegram_link, url: true
  validates :github_link, url: true, presence: true
  validates :body, presence: true, length: { maximum: 1562 }

  belongs_to :user

  has_many :resume_tags, dependent: :destroy
  has_many :tags, through: :resume_tags

  def all_tags
    tags.map(&:name).join(', ')
  end

  def all_tags=(names)
    self.tags = names.split(',').map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end
end
