class Instructor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def students
        Course.all.filter{|course| course.instructor == self}
    end 

 
end 