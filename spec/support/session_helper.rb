# frozen_string_literal: true

def sign_up
  visit new_user_registration_path

  fill_in :user_email, with: 'user@example.com'
  fill_in :user_username, with: 'Grisha'
  fill_in :user_password, with: '123321'
  fill_in :user_password_confirmation, with: '123321'

  click_link_or_button 'Sign up'
end
