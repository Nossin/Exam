require 'post.rb'

class User

attr_reader :name, :post_count 
def initialize(name)
@name = name
@post_count = 0
@post = []
end

def add_post(title,text,date)
@post_count = @post_count + 1
post = Post.new(title,text,date, @name)
@post << post
end

def posts()
return @post.reverse
end

def list()
		puts display_entry
end

def display_entry()
 s = @name +  "\n"
		@post.each {|p| s += p.display_entry + "\n"}
end

def find_post_by_title(title)
 if @post.any?{|pl| pl.title == title}
   return @post[@post.find_index{|pl| pl.title == title}]
end
end
end
