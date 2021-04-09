class Student
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def enrollment(instructor, course_name)
        Course.new(instructor, self, course_name)
    end 

    def courses
        Course.all.filter{|course| course.student == self}.map{|course| course.name}
    end 

 
end 