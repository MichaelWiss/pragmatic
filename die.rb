class Die
  attr_reader :number
  def roll
  	rand(1..6)
  end
end