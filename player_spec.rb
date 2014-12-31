require_relative 'player'

 

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
   	expect(@player.strong? )== true

   end

end












