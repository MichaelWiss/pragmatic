

class Project

    attr_reader :goal, :amount
    attr_accessor :name

	def initialize(name, goal, amount=0)
		@name = name.capitalize
		@amount = amount
		@goal = goal
		@pledge = Hash.new(0)
	end

	def amount
       @pledge.values.reduce(0, :+)
    end

	def pledge(pledge)
		@pledge[pledge.name] += pledge.amount
		puts "#{@name} found a #{pledge.name} worth #{pledge.amount} amount."
		puts "#{@name}'s pledge amount: #{@pledge}"
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

    def greater?
    	@amount >= 100
    end
	
end

if __FILE__ == $0
  project = Project.new("project1")
  puts project.name
  puts project.amount
  project.gain_funds
  puts project.amount
  project.lost_funds
  puts project.amount
  project.gain_funds
  puts project.amount
end