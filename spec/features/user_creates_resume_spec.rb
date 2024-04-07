require "spec_helper"

feature "Create Resume" do
  before(:each) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
    sign_up
  end

  scenario "allows user to create resume" do
    user = User.find_by(email: 'user@example.com')

    visit new_user_resume_path(user_id: user.id)

    fill_in :resume_title, with: 'Test Title'
    fill_in :resume_name, with: 'Test Name'
    fill_in :resume_city, with: 'Test City'
    fill_in :resume_years_of_experience, with: 3
    fill_in :resume_salary, with: 200000
    fill_in :resume_telegram_link, with: 'https://web.telegram.org/a/'
    fill_in :resume_github_link, with: 'https://github.com/soniillusions'
    fill_in :resume_body, with: 'Test resume text'

    click_button 'Отправить'
    expect(page).to have_content I18n.t "resumes.confirmed"
  end
end