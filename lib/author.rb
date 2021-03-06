
class Author

    attr_accessor :name, :posts

    @@post_count = 1

    def initialize(name)
        @name = name
        @posts = []
    end
    
    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post)
        @posts << self
        post.author = self
    end

    def add_post_by_title(title)
        title = Post.new(title)
        posts << self
        title.author = self
    end

    def self.post_count
        Post.all.length
    end
end