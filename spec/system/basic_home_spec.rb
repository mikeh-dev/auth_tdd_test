require "rails_helper"

RSpec.describe "Basic Home", type: :system do
  context "when visiting the home page" do
    it "displays the home page" do
      visit root_path
      expect(page).to have_content("Home")
      expect(page).to have_content("About")
      expect(page).to have_content("Sign up")
      expect(page).to have_content("Sign in")
    end

    it "displays the about page" do
      visit about_path
      expect(page).to have_content("About")
      expect(page).to have_content("Home")
    end
  end
end
