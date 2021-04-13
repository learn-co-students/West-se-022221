class Author < ActiveRecord::Base
    has_many :books
    #Create
        #Author.new
        #ix = Author.new(name:'ix', bio:'is rad', age:999)
        #ix.save
        #Author.create(name:'rose', bio:'cat', age:'9')

    #Read
        #Author.all
        #Author.first
        #Author.last
        #Author.find(:id) #takes an id only
        #Author.find_by(name:'ix') #takes any attribute in a hash
        #Author.where(name:'ix') 
        #Author.all.pluck
        #Author.all.pluck(:column_name)
    #Update
        #ix.bio = 'is really rad'
        #ix.save
        #ix.update(bio:'is rad')
        #Author.update(name:'bob')
    #Delete
        #ix.destroy
        #Author.destroy_all
end 
#Author.methods.length

#help me make book