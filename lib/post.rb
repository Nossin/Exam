require 'yaml'
require 'user.rb'

class Post

attr_reader :title , :text, :date,:user
def initialize(title,text,date)
@title = title
@text = text
@date = date
end

def summary()
@text.split("").first(10).join("")
return words10 = @text[0..9]
end

def tagme()
end

def same?(Post)
if(@title == Post.title && @text == Post.text && @date == Post.date )
 true
else
false
end

end
