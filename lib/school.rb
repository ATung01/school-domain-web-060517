# code here!
require "pry"
class School

  attr_accessor :roster


  def initialize(name)
    @name = name
    @roster = {}
  end


  def add_student(student_name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
      @roster[grade] << student_name
    else
      @roster[grade] << student_name
    end
    # binding.pry
  end

  def grade(student_grade)
    @roster[student_grade]
  end

  def sort
    @roster.each do |grade, names|
      names.sort!
    end

  end

end
