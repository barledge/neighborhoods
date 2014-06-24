require 'rails_helper'

feature 'user signs up or registers', %Q{
  As a user
  I want to sign up
  So that I can review some neighborhoods

} do

# Acceptance Criteria

# I must provide my username/email and password
# I can optionally provide my first name, last name, city, and state
# I am presented with a success message if I sign up successfully
# I'm presented with errors if I provide invalid credentials

  scenario 'user signs up successfully' do
    attrs = {
      email: "dog@face.com",
      password: "Secret12345",
      password_confirmation: "Secret12345"
    }

    user = User.new(attrs)

    visit new_user_registration_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password_confirmation
    click_on 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'

  end

  # scenario 'user gets error message if username missing' do

  # end

  # scenario 'user gets error message if password missing'

  # scenario 'user gets error message if invalid credentials'

  end
