require_relative 'project'
require_relative '1die'

module FundingRound
  def self.take_round(project)
  die = Die.new

      	number_rolled = die.roll
      	if number_rolled.odd?
      		project.lost_funds
      	else
      		project.gain_funds
      	end
      pledge = PledgePool.random
      puts "#{project.name} found a #{pledge.name} worth #{pledge.amount} amount."
 end
end
