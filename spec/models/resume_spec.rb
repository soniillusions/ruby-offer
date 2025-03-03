# frozen_string_literal: true

require 'rails_helper'

describe Resume do
  describe 'validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :years_of_experience }
    it { is_expected.to validate_presence_of :github_link }
    it { is_expected.to validate_presence_of :body }

    it { is_expected.to validate_length_of(:name).is_at_most(50) }
    it { is_expected.to validate_length_of(:title).is_at_most(150) }
    it { is_expected.to validate_numericality_of(:years_of_experience).is_greater_than(-1).is_less_than(21) }
    it { is_expected.to validate_length_of(:body).is_at_most(1562) }
  end

  describe 'associations' do
    it { is_expected.to have_many(:tags) }
    it { is_expected.to have_many(:resume_tags) }
    it { is_expected.to belong_to(:user) }
  end
end
