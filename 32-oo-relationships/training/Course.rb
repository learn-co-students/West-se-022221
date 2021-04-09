class Course
    attr_reader :instructor, :student, :name
    @@all = []
    def initialize(instructor, student, name)
        @instructor = instructor
        @student = student
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

 
end 