
require_relative 'project'


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
      	project.lost_funds
      	project.gain_funds
      	project.gain_funds
      	
      	puts project
    end
  end

end