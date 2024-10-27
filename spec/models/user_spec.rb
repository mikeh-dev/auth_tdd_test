require 'rails_helper'

RSpec.describe User, type: :model do
  describe "should validate presence, uniqueness, and format of email" do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should allow_value("test@example.com").for(:email) }
    it { should_not allow_value("test").for(:email) }
    it { should_not allow_value("test@").for(:email) }
    it { should_not allow_value("test@example..com").for(:email) }
  end

  describe "has_secure_password and is present on registration " do
    it { should have_secure_password }
    it { should validate_presence_of(:password).on(:create) }
    it { should validate_length_of(:password).is_at_least(6).on(:create) }
  end
end
