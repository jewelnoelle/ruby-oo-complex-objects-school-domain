require 'pry'
class School

    attr_accessor :roster

    def initialize(model)
        @model = model
        @roster = {}
    end

    def add_student(name, grade)
        roster[grade] ||= []
        roster[grade] << name
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        @roster.map do |grade, roster|
            @roster[grade] = roster.sort!
        end
        @roster
    end
end
