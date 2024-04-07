require "spec_helper"

feature "Create Account" do
  before(:each) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
    sign_up
  end

  scenario "allows visitor to create account" do
    expect(page).to have_content I18n.t "devise.registrations.signed_up"
  end
end
