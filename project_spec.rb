require_relative 'project'

describe Project do

  before do
     @amount = 1000
     @project = Project.new("project1", @amount)
   end

it "has a capitalized name" do
      
      expect(@project.name).to eq("Project1")
  end















end