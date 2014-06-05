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

end

def tagme()
end

def same?
end

end
