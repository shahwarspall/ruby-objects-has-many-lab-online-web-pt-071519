class Post
  
  
   attr_accessor :author, :name

     @@all = []

   def initialize(name)
    @name = name
    @@all << self
  end
  
  
def author_name
    if self.author
      self.author.name
    else 
      nil 
    end 
  end
    
    def self.all
      @@all
    end
end 
