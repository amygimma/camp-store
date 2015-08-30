require "rails_helper"

feature "Registration" do
  scenario 'signing up' do
    visit new_user_registration_path
    fill_in 'user_email', with: 'user@example.com'
    fill_in 'user_password', with: 'password11'
    fill_in 'user_password_confirmation', with: 'password11'
    click_on 'Sign up'

    expect(page.text).to include("Welcome! You have signed up successfully.")
  end
end
