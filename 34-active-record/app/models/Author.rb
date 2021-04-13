class Author < ActiveRecord::Base
    has_many :books
    #Create
        #rose = Author.new(name:'rose', bio:'is a cat', age:9) #is not in the DB
        #rose.save #is saved to the DB
        #Author.create(name:'ix', bio:'is rad', age:999)
    #Read
        #Author.all Read everey author in our DB
        #Author.first
        #Author.last
        #Author.find(1)
        #Author.find_by(name:'ix')
        #Author.all.pluck
        #Author.all.pluck(:column_name)
    #Update
        #ix.bio = 'is really really rad'
        #ix.save
        #ix.update(bio:'is rad')
        #Author.update()
    #Delete 
        #ix.destroy
        #Author.destroy_all
end 