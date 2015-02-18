
require_relative 'project'
require_relative '1die'
require_relative 'funding_round'


class ProjectStatus

	attr_reader :title
   def initialize(title)
   	  @title = title
	  @projects = []
    end
    def add_project(a_project)
      @projects.push(a_project)
    end

    def request_funding
      puts "There are #{@projects.size} projects in #{@title}: "
      
      @projects.each do |project|
      puts project	
      end
      @projects.each do |project|
      	die = Die.new
      	number_rolled = die.roll
      	if number_rolled.odd?
      		project.lost_funds
      	else
      		project.gain_funds
      	end
      
      	
      	puts project
    end
  end

end