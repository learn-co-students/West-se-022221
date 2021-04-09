class User
    attr_reader :user_name, :bio
    @@all = []
    def initialize(user_name,bio)
        @user_name = user_name
        @bio = bio
        @@all << self
    end 

    def self.all
        @@all
    end 

    def post_tweet(message)
        Tweet.new(message, self)
    end 

    def like_tweet(tweet)
        Like.new(tweet, self)
    end 

    def tweets
       Tweet.all.filter{|tweet| tweet.user == self} 
    end 

    def liked_tweets
        Like.all.filter do |like|
            like.user == self 
        end 
    end 


    
end

