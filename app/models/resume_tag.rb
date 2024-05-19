# frozen_string_literal: true

class ResumeTag < ApplicationRecord
  belongs_to :resume
  belongs_to :tag
end
