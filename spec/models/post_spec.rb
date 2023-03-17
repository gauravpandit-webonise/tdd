require 'rails_helper'
RSpec.describe post, type: :model do
  context 'validations' do
    it "checks if post is empty" do
      post = Post.new(title: "my blog", body: "blog post blog post")
      expect(post).to be_valid
    end
    it "presence of title" do
      post = Post.new(title: "", body: "hello world lorem ipsum")
      expect(post).to_not be_valid
    end
  end
end
