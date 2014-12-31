
require_relative 'player'

player = Player.new("Sloopy", 10)

puts player.health == 10

puts player

if player.health >= 10
	puts "High score!"
end

puts "High score" if player.health >= 10

if player.health < 10
	puts "low"
end

if player.health >= 10
	puts "High score"
else
	puts "low"
end

