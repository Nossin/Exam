require 'spec_helper'

describe Post do
  describe "#initialize" do

    context "with a yaml file" do
      it "should properly load a post from a yaml file"
    end

    context "with proper attributes" do
      it "should properly initialize a post instance" do
      post = Post.new('im good','lksdajlakjdlkjadkld','13/03/23','Noss')
      expect(post).is_a?(Post)
     end
    end

  end
  describe "#summary" do
    it "should display the first 10 words of text" do 
    post = Post.new('im good',"lksdajlakjdlkjadkld",'13/03/23','Noss')
      expect(post.summary).to eql('lksdajlakj')
   end
  end

  describe "#tagme" do
    it "should be able to tag with 1 tag"
    it "should be able to tag with 4 tags"
  end

  describe "#same?" do
    it "should return true if Title, Date and Text are the same" do
    post = Post.new('im good',"lksdajlakjdlkjadkld",'13/03/23','Noss')
    post2 = Post.new('im good',"lksdajlakjdlkjadkld",'13/03/23','Noss')
     expect(post.same?(post2)).to eql(true)
    end
    it "should return false if Title, Date and Text are not the same"
  end

  describe "#display_entry" do
    it "should properly output a post entry"
  end

  describe "#save" do
    it "should save the post to a YAML file"
  end

end
