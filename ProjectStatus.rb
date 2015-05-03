
require_relative 'project'
require_relative '1die'
require_relative 'funding_round'
require_relative 'pledgepool'


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
      	FundingRound.take_round(project)
        puts project
     end
     pledges = PledgePool::PLEDGES
     puts "\nThere are #{pledges.size} pledge levels:"
     pledges.each do |pledge|
     puts "A #{pledge.name} is worth #{pledge.amount} amount"
     end
   end

end