
# # def time
# #   current_time = Time.new
# #   current_time.strftime("%I:%M:%S")
# # end



# # def say_hello(name, health=100)
# #   "I'm #{name.capitalize} with a health of #{health} as of #{time}."
# # end

# # puts say_hello("larry")

# # puts say_hello("moe", 200)






# player1 = Player.new("moe", 100)
# player2 = Player.new("larry", 100)
# # puts player1.say_hello
# # puts player2.say_hello
# # puts player2.health
# player2.name = "lawrence"
# player1.name = "moe"
# # puts player2.name
# # puts player2.to_s
# # puts player1.to_s
# # puts player1.name
# player3 = Player.new("curly", 60)

# players = [player1, player2, player3]

# puts "There are #{players.size} players in the game:"

# players.each do |player|
#   puts player
# end

# players.each do |player|
#   puts player.health
# end

# players.each do |player|
#   player.blam
#   player.w00t
#   player.w00t
#   puts player
# end

# players.pop
# player4 = Player.new("Shemp", 90)
# players.push(player4)
require_relative 'player_review'
require_relative 'game_review'


player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
player4 = Player.new("dickie", 125)
player5 = Player.new("Antoinette", 125)
    
knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.add_player(player4)
knuckleheads.play





