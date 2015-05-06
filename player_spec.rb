require_relative 'player'
require_relative 'spec_helper'
require_relative 'treasure_trove'

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
  	@player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.to_s.should == "I'm Larry with health = 150, points = 100, and score = 250."
  end

  it "computes a score as the sum of its health and points" do  
    @player.found_treasure(Treasure.new(:hammer, 50))
    @player.found_treasure(Treasure.new(:hammer, 50))

    @player.score.should == 250
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

context "with a health greater than 100" do
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

it "computes points as the sum of all treasure points" do
  @player.points.should == 0

  @player.found_treasure(Treasure.new(:hammer, 50))

  @player.points.should == 50

  @player.found_treasure(Treasure.new(:crowbar, 400))

  @player.points.should == 450

  @player.found_treasure(Treasure.new(:hammer, 50))

  @player.points.should == 500
end

it "yields each found treasure and its total points" do
  @player.found_treasure(Treasure.new(:skillet, 100))
  @player.found_treasure(Treasure.new(:skillet, 100))
  @player.found_treasure(Treasure.new(:hammer, 50))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))
  @player.found_treasure(Treasure.new(:bottle, 5))

  yielded = []
  @player.each_found_treasure do |treasure|
    yielded << treasure
  end

  yielded.should == [
    Treasure.new(:skillet, 200),
    Treasure.new(:hammer, 50),
    Treasure.new(:bottle, 25)
 ]
end

end












