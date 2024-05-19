# frozen_string_literal: true

require 'spec_helper'

describe 'Create Account' do
  before do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean
    sign_up
  end

  it 'allows visitor to create account' do
    expect(page).to have_content I18n.t 'devise.registrations.signed_up'
  end
end
