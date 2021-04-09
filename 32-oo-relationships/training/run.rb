require 'pry'
require_relative 'Instructor'
require_relative 'Student'
require_relative 'Course'

i1 = Instructor.new('ix')
i2 = Instructor.new('adam')

s1 = Student.new('rose')
s2 = Student.new('luke')
s3 = Student.new('bubbles')


s1.enrollment(i2, 'intro to css')
s2.enrollment(i2, 'intro to css')
s2.enrollment(i1, 'intro to js')
s3.enrollment(i1, 'intro to js')


binding.pry