require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/home/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/home/about"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /sign_up" do
    it "returns http success" do
      get "/users/sign_up"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /sign_in" do
    it "returns http success" do
      get "/users/sign_in"
      expect(response).to have_http_status(:success)
    end
  end
end