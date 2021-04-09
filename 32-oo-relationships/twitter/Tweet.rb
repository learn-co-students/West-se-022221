class Tweet
    attr_reader :message, :user
    @@all = []
    def initialize(message,user)
        @message = message
        @user = user
        @@all << self
    end 

    def self.all
        @@all
    end 

    def user_name
        # user.user_name
        #@user.user_name
        self.user.user_name
    end 

    def likers
        Like.all.filter{|like|like.tweet == self}.map{|like| like.user.user_name}
         
    end
    

end
