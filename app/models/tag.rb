# frozen_string_literal: true

class Tag < ApplicationRecord
  has_many :resume_tags, dependent: :destroy
  has_many :resumes, through: :resume_tags
end
