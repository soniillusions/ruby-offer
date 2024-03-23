class Resume < ApplicationRecord
  validates :experience, presence: true, numericality: { greater_than: 0, less_than: 40 }
  validates :resume_link, format: { with: URI::DEFAULT_PARSER.make_regexp }, presence: true
  validates :github_link, format: { with: URI::DEFAULT_PARSER.make_regexp }, presence: true
  validates :body, presence: true
end
