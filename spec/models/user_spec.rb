require 'rails_helper'
RSpec.describe user, type: :model do
  context 'validations' do
    it "ensures the presence of a email" do
      user = User.new(email: "")
      expect(user).to_not be_valid
    end
    it "minimum length of password" do
      user = User.new(user_name: "gaurav",password: "gp", email:"gaurav@webonisecom")
      expect(user).to be_valid
    end
    it "presence of name" do
      user = User.new(user_name: "")
      expect(user).to_not be_valid
    end
    it "presence of error messege" do
      user = User.new(user_name: "")
      user.validate
      message = User.errors.any?
      expect(message).to eq(true)
    end
  end
end
