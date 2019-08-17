class Author 
  attr_accessor :name 
attr_reader :post
@@every
def initialize(name)
  @name = name 
  @all = []
end 


def posts
  @all
    Post.all.select do |post|
      post.author == self
    end
  end
  
  def add_post(post)
    @all << post
  
    post.author = self 
  end 
    
    def add_post_by_title(post_title)
      post = Post.new(post_title)
      post.author = self 
      @all << post_title
      
    end 
    
    def self.post_count
      Post.all.count
    end 
end