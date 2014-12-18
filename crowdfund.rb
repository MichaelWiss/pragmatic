# project1 = "projectA"
# project2 = "projectB"
# project3 = "projectC"
# project4 = "projectD"


# p1value = "$1000"
# p2value = "$2000"
# p3value = "$3000"
# p4value = "$4000"


# puts "#{project1} has #{p1value} in funding"
# puts "Projects: \t\n #{project1} \t\n #{project2} \t\n #{project3}"

# puts "Project totals:"

#     puts "\t\n #{project1.capitalize.ljust(30,'.')} #{p1value} total"
#     puts "\t\n #{project2.capitalize.ljust(30,'.')} #{p2value} total"
#     puts "\t\n #{project3.capitalize.ljust(30,'.')} #{p3value} total"
#     puts "\t\n #{project4.capitalize.ljust(30,'.')} #{p4value} total"


#Methods

# def project_total(project, total=0)
# 	"#{project.capitalize} has a funding amount of #{total}."
# end


# puts project_total("project1", 1500)

# class Player
# 	def initialize()

# 	end
# end


class Project

    attr_reader :goal, :amount
    attr_accessor :name

	def initialize(name, goal, amount=1000)
		@name = name.capitalize
		@amount = amount
		@goal = goal
	end

	def to_s
		"#{@name} has #{@amount} in funding towards a goal of $#{@goal}."
	end

	def lost_funds
		@amount -=500
		puts "#{@name} lost some funds"
	end

	def gain_funds
		@amount +=500
		puts "#{@name} gained some funding"
	end

	def funding_needed
		@goal - @amount
	end

	
end

project1 = Project.new("project1", 1500)
project2 = Project.new("project2", 2000, 5000)
project3 = Project.new("project3", 2000, 3400)

puts project1
puts project2
puts project3

project1.gain_funds
project2.gain_funds
project3.gain_funds

puts project1
puts project2
puts project3

puts project1.amount
puts project2.goal
puts project3.amount
puts project1.funding_needed















































