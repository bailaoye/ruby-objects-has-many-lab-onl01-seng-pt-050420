class Author
  attr_accessor :name, :posts
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select{|post| post.author == self}
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(title)
    self.add_post(Post.new(title))
  end

  #class method
  def self.post_count
    #get # of all posts associated w author
    Post.all.select {|post| post.author != nil}.length
  end
end
