require_relative 'project'
require_relative 'spec_helper'
require_relative 'treasure_trove'

describe Project do

  before do
  	 
     @amount = 1000
     @project = Project.new("project1", 1000, @amount)
     $stdout = StringIO.new 
   end

 it "has a capitalized name" do
      
      expect(@project.name).to eq("Project1")
   end

 it "has an amount" do  
      expect(@amount).to eq(1000)
  end

 it "increases amount by 500 when gaining funds" do
     @project.gain_funds

      expect(@project.amount).to eq(@amount + 500)
   end

  context "created without a funding amount" do
    before do
      @project = Project.new("Project ABC", 5000)
    end
    
    it "has a default funding amount of 0" do
      @project.amount.should == 0
    end
  end

     it "computes amount as the sum of all pledges" do
  
     expect(@project.amount).to eq(0)
     expect(@pledge.pledge(Pledge.new:bronze, 50))
     expect(@pledge.amount).to eq(50)

  # @player.found_treasure(Treasure.new(:crowbar, 400))
  #    expect()

  # @player.points.should == 450

  # @player.found_treasure(Treasure.new(:hammer, 50))

  # @player.points.should == 500
end


 # context "with an amount greater than 1000" do
 #   	before do
 #   		@project = Project.new("projectA", 10, 1000)
 #   	end

 #   	it "is greater" do
 #   		@project.greater?.should be_truthy
 #   	end
 #  end



#   context "with an amount less than 1000" do
#   	before do
#   	   @project = Project.new("projectB", 1000, 1000)
#   	end
#   	it "is underfunded" do
#   	 @project.should_not be_greater
#   	end
#   end
 end

