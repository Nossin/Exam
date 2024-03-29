require 'spec_helper'

describe User do

  describe "#initialize" do
    it "should properly initialize with an username" do
    user = User.new('Nossin')
    expect(user).is_a?(User)
    end
  end

  describe "#add_post" do
    it "should add a post to the posts list" do
    user = User.new('Nossin')
    user.add_post('Great times','ldkjslkjdslkdal','12/23/93')
    expect(user.post_count).to eql(1)
   end
  end

  describe "#list" do
    it "should properly ouput all posts"
  end

  describe "#find_post_by_title" do
    it "should return a post by title" do
      user = User.new('Nossin')
    user.add_post('Great times','ldkjslkjdslkdal','12/23/93')
    expect(user.find_post_by_title).to eql()
   end
    it "should return the first one if there are several with the same name"
  end

end
