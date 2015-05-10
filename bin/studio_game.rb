 #!/usr/bin/env ruby

require_relative '../lib/studio_game/game'
require_relative '../lib/studio_game/clumsy_player'
require_relative '../lib/studio_game/berserk_player'

game = StudioGame::Game.new("Knuckleheads")

default_player_file = 
  File.join(File.dirname(__FILE__), 'players.csv')
game.load_players(ARGV.shift || default_player_file)

klutz = StudioGame::ClumsyPlayer.new("klutz", 105)
game.add_player(klutz)

berserker = StudioGame::BerserkPlayer.new("berserker", 50)
game.add_player(berserker)

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase
  case answer
  when /^\d+$/
    game.play(answer.to_i)
  when 'quit', 'exit'
    game.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

game.save_high_scores










# knuckleheads = Game.new("knuckleheads")
# player3 = Player.new("curly", 125)
# knuckleheads.add_player(player3)
# knuckleheads.play





















































































































