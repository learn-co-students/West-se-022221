require 'pry'
require_relative 'Tweet'
require_relative 'User'
require_relative 'Like'

coffee_dad = User.new('Coffee dad', 'just a coffee loving dad')
tea_dad = User.new('Tea dad', 'tea is great!')

t1 = coffee_dad.post_tweet('coffee good')
t2 = coffee_dad.post_tweet('Need that coffee')
t3 = coffee_dad.post_tweet('team no sleep, coffee 4ever')
t7 = coffee_dad.post_tweet('Just had my first AeroPess, never going back')


t4 = tea_dad.post_tweet('Green tea is good for lunch')
t5 = tea_dad.post_tweet('Earl grey is a good breakfast tea!')
t6 = tea_dad.post_tweet('Matcha Matcha Man!')

coffee_dad.like_tweet(t6)
coffee_dad.like_tweet(t5)
coffee_dad.like_tweet(t4)

tea_dad.like_tweet(t1)
tea_dad.like_tweet(t2)


binding.pry