require 'yaml'
require 'user.rb'

class Post

attr_reader :title , :text, :date,:user 
def initialize(title,text,date,user)
@title = title
@text = text
@date = date
@user = user


end

def summary()
@text.split("").first(10).join("")
return words10 = @text[0..9]
end

def tagme()
end

def same?
end

def save
File.open @title + ".yml", 'w' do |f|
 f.write YAML::dump @products
end
end
end
