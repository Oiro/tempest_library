require 'rails_helper'

RSpec.describe User, type: :model do
  it "should not have a long name" do
      user = User.new
      user.name = "a" * 51
      expect(user).not_to be_valid

  end
  it "should have a unique email address" do

      user = User.new
      user.email = "moses@community.lakehub.co.ke"
      user.save

      duplicate_user = user.dup

      expect(duplicate_user).not_to be_valid


  end
end
