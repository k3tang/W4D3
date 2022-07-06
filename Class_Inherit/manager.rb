require_relative "employee.rb"



class Manager < Employee
    attr_reader :employees
    def initialize(name, salary, title,boss = nil)
    @employees = []
     super(name,salary,title,boss)
    end 

    def bonus(multiplier)
        (@employees.map {|emp| emp.salary}.sum)*multiplier

    end

    def minions(minion)
        @employees << minion
    end 

end



emp = Employee.new("Ned", 5 , "student")
darren = Manager.new("Darren", 20 , "teacher")
karen =  Employee.new("Karen", 10 , "stu",darren)
darren.minions(emp)
darren.minions(karen)

    comp = [emp, karen, darren]
    comp.each do |ele|
        p ele.bonus(2)
    end

require "byebug"
# debugger

