require 'pry'
class School
    def initialize(model)
        @model = model
    end

    def roster=(roster)
        @roster = roster
    end

    def roster
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] = []
        @roster[grade] << name
    end

    def grade(grade)
        school.roster[grade]
    end

    def sort
        @roster.map do |grade, roster|
            @roster[grade] = roster.sort!
        end
        @roster
    end
end

