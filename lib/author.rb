class Author
   attr_accessor :name
   
   #@@all = []
   
   def initialized(name)
     @name = name
     #@@all << self
   end 
   
   #let!(:betty) { Author.new("Betty") }
   
   def self.all
    @@all
   end
  
  def self.all
    @@all
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

    def author_name
    if self.author!=nil
      self.author.name
        elsif self.author=nil
          nil
  end
    end

  def self.post_count
    Post.all.count
  end
end
  
  
 