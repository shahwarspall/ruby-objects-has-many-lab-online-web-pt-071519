class Author 
  attr_accessor :name 


def initialize(name)
  @name = name 
  @all = []
end 


def posts
    post.all.select do |post|
      post.author == self
    end
  end
  
  def add_post(post)
    @all << post
    post.author = self 
  end 
    
    def add_post_by_title(post_title)
      post = post.new(post_title)
      post.author = self 
      @all << post_title
      
    end 
    def self.post_count
      post.count.all
    end 
end