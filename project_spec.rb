require_relative 'project'

describe Project do

  before do
  	 
     @amount = 1000
     @project = Project.new("project1", @amount)
     $stdout = StringIO.new 
   end

 it "has a capitalized name" do
      
      expect(@project.name).to eq("Project1")
   end

 it "has an amount" do  
      expect(@amount).to eq(1000)
  end

  it "increases health by 500 when gaining funds" do
     @project.gain_funds

      expect(@project.amount).to eq(@amount + 500)
   end
end

