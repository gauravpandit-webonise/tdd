require 'rails_helper'
RSpec.describe comment, type: :model do
  context 'validations' do
    it "checks length of comment" do
      comment = Comment.new(commenter: "gaurav", body: "hello world")
      expect(comment).to_not be_valid
    end
    it "presence of commenter" do
      comment = Comment.new(commenter: "", body: "hello world lorem ipsum")
      expect(comment).to_not be_valid
    end
  end
end
