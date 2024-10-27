require 'rails_helper'

RSpec.describe "User signup", type: :system do

  it "allows a new User to create an account" do
    visit "/user/signup"
    expect(page).to have_content("Sign up")
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Create Account"
    expect(page).to have_content("User created successfully")
  end
end