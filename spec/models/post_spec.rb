require 'rails_helper'
RSpec.describe Post, type: :model do
  context 'checking method' do
    it "sorting by title check" do
      Post.new({title: "gaurav", content: "abcde",user_id: 1}).save
      Post.create({title: "mayur", content: "fghij",user_id: 1})
      Post.create({title: "bhushan", content: "klmno",user_id: 1})
      sorted_posts=Post.sorted_posts
      byebug
      expect(sorted_posts.first.title).to eq "bhushan"
    end
  end
end
