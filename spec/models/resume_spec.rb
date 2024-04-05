require "rails_helper"

describe Resume, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :title }
    it { should validate_presence_of :years_of_experience }
    it { should validate_presence_of :github_link }
    it { should validate_presence_of :body }

    it { should validate_length_of(:name).is_at_most(50) }
    it { should validate_length_of(:title).is_at_most(150) }
    it { should validate_numericality_of(:years_of_experience).is_greater_than(-1).is_less_than(21) }
    it { should validate_length_of(:body).is_at_most(1562) }

    it { should have_many(:tags)}
    it { should have_many(:resume_tags)}
    it { should belong_to(:user)}
  end
end

