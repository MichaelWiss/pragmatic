require_relative 'player'
require_relative 'spec_helper'

 

describe Player do

  before do
     @initial_health = 150
     @player = Player.new("larry", @initial_health)
   end
	
  it "has a capitalized name" do
      
      expect(@player.name).to eq("Larry")
  end
  it "has an initial health" do
  	
  	expect(@player.health).to eq(150)
  end
  it "has a string representation" do
  	
  	expect(@player.to_s).to eq("Larry has a health of 150 and a score of 155.")
  end

  it "computes a score as the sum of its health and length of name" do  
    
    expect(@player.score).to eq(150 + 5)
  end

  it "increases health by 15 when wooted" do
  	
    @player.woot
    expect(@player.health).to eq(@initial_health + 15)
  end

  it "decreases health by 10 when blammed" do
    @player.blam

     expect(@player.health).to eq(@initial_health - 10)
  end



 end


 context "with a health of at least 10" do
 	before do
     @initial_health = 150
     @player = Player.new("larry", @initial_health)
    end
   it "has a high score" do
   	expect(@player.hit? )== true

   end

end

context "with a health greater than 150" do
 	before do
     @initial_health = 150
     @player = Player.new("larry", @initial_health)
    end
   it "has a high score" do
   	expect(@player.strong? ).to eq(true)

   end

   it "is strong" do
   	expect(@player.strong?).to eq(true)
   end

   it "is strong do" do
     expect(@player).to be_strong
   end


  context "created with a default health" do
  	before do
  		@player = Player.new("Tony", health=0)
  	end
  end

  it "has a health of 0" do
  	@player.health.should == 0

  end
end

  context "with an initial health of 100 or less" do
	before do
	@initial_health = 100
	@player = Player.new("Pierre", @initial_health)
   end
   it "does not have a health of 150" do
   	@player.should_not  be_strong

   end

   context "in a collection of players" do
    before do
    @player1 = Player.new("moe", 100)
    @player2 = Player.new("larry", 200)
    @player3 = Player.new("curly", 300)

    @players = [@player1, @player2, @player3]
   end
  
    it "is sorted by decreasing score" do
    @players.sort.should == [@player3, @player2, @player1]
   end
 end

end












