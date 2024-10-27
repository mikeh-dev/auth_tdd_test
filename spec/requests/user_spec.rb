require 'rails_helper'

RSpec.describe "Users", type: :request do

  describe "allows a new User to access the signup page" do
    it "returns http success" do
      get "/sign_up"
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:new)
    end
  end

  describe "after a user submits the signup form" do
    it "creates a new user in the database" do
      expect { post sign_up_path, params: { user: { email: "test@example.com", password: "password", password_confirmation: "password" } } }.to change(User, :count).by(1)
    end
  end
end