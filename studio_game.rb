#greeting = "Welcome!"
# 3.times do
#  puts greeting.upcase 
#end
#puts Time.new


#block: do....end


#string interpolation: #{greeting}

#name1 = "larry"
#hvalue = 60

#puts name1 + '\'s' + ' health is ' + hvalue.to_s

# puts "#{name1}'s + health is  + #{hvalue * 3}"

# puts "#{name1}'s + health is  + #{hvalue / 9.to_f}"

# puts "#{name1}'s + health is  + #{hvalue / 9.to_i}"

# puts "#{name1}'s + health is  + #{hvalue / 9.0}"

# puts "#{name1}'s + health is  + #{hvalue / 9}"

# name2 = "curly"
# name3 = "moe"

# puts "Players: \n \t #{name1} \n \t #{name2} \n \t #{name3} "

#new line: \n
#tab: \t

# project1 = "ProjectA"
# project2 = "ProjectB"
# project3 = "ProjectC"

# p1value = "$1000"

# puts "#{project1} has #{p1value} in funding"
# puts "Projects: \t\n #{project1} \t\n #{project2} \t\n #{project3}"


# name1 = "larry"
# health1 = 60
# puts "#{name1.capitalize} has a health of #{health1}."

# name2 ="curly"
# health2="125"
# puts "#{name2.upcase} has a health of #{health2}."
# health2 =health1
# puts "#{name2.upcase} has a health of #{health2}."
# health1 = 30
# puts "#{name1.capitalize} has a health of #{health1}."
# puts "#{name2.upcase} has a health of #{health2}."

# name3 ="moe"
# health3 = 100
# #puts "#{name3.capitalize.rjust(30,"*")} has a health of #{health3.ljust(30,"*")}."
# text = "#{name3.capitalize} has a health of #{health3}."
# puts text.center(100,"*")

# name4 ="Shemp"
# health4 = 90
# #puts "#{name4}#{health4.ljust(100,'.')}health"
# #^not a string
# puts "#{name4.capitalize.ljust(30,'.')} #{health4} health."

# puts 123.to_s.reverse.to_i

# current_time = Time.new
# puts current_time


#Methods
# def weekday
# 	current_time = Time.new
# 	current_time.strftime("%A")
# end

# def movie_listing(title, rank=0)

# 	 "#{weekday.upcase}: #{title.capitalize} has a rank of #{rank} "
# end

# puts movie_listing("goonies", 10)
# puts movie_listing("raiders of the lost ark", 5)

# a_title = "city of god"
# puts movie_listing(a_title)




# def say_hello(name)
# 	puts "#{name}"

# end

# say_hello("Floyd")

# def say_hello(name)
# 	"I'm #{name.capitalize}."
# end
# puts say_hello("Genghis")


# def say_hello(name, health=100)
# 	"I'm #{name.capitalize}, my health is #{health}"
# end

# puts say_hello("larry", 60)
# puts say_hello("genghis")
# puts say_hello("tom", 40)

# def time
#   #current_time = Time.now.asctime
#   current_time = Time.new
#   current_time.strftime("%I:%M:%S")
	
# end

# def say_hello(name, health=100)
# 	"I'm #{name.capitalize}, my health is #{health} at #{time}"
# end

#  puts say_hello("larry", 60)
#  puts say_hello("genghis")
#  puts say_hello("tom", 40)

#make a class

# class Movie
#   def initialize(title, rank)
#   	@title = title.capitalize
#   	@rank = rank
  	
#   end

#   def thumbs_up
#   	#@rank = @rank + 1
#   	@rank += 1
#   end

#   def thumbs_down
#   	#@rank = @rank - 1
#   	@rank -= 1
#   end

#   def to_s
#   	"#{@title} has a rank of #{@rank}"
#   end
# end

# movie1 = Movie.new("Dune", 1)
# movie1.thumbs_up
# movie2 = Movie.new("Crooklyn", 10)
# movie2.thumbs_down
# puts movie1.object_id
# puts movie1
# puts movie2


# class Player
# 	attr_accessor :name
#     attr_reader :health


# 	def initialize(name, health=100)
# 		@name = name.capitalize
# 		@health = health
#     end

#     def blam
#     	@health -=10
#     	puts "#{@name} got blammed!"
#     end

#     def woot
#     	@health +=15
#     	puts "#{@name} got wooted!"
#     end

#     def score
#     	@health + @name.length
#     end

#     def name=(new_name)
#         @name = new_name.capitalize
#     end


#     def to_s
#     	" #{@name} has a health of #{@health} and a score of #{score}."
#     end
# end

# player1 = Player.new("moe")
# player2 = Player.new("larry", 60)
# player3 = Player.new("curly", 135)

# #puts player1.inspect
# puts player1
# player2.woot
# puts player2
# player3.blam
# puts player3


# puts player1.health
# puts player2.health
# puts player1.name
# puts player2.name
# player2.name = "lawrence"
# puts player2.name


# books = ["Blink", "Freakonomics", "Outliers"]

# puts books

# #alternately

# books = %w(Blink Freakonomics Outliers)

# puts books

# puts books.length
# puts books[1]
# puts books[3]

# books.size
# books[1]
# books[3]


# books = []
# books.push("Blink")

# puts books

# books.push("Freakonimics")

# puts books

# books.push("Outliers")

# puts books

# books.pop

# puts books

# books.pop

# puts books

# books.pop

# puts books

# books = ["Blink", "Freakonomics", "Outliers"]

# books = books.join(" and ")

# puts books

# books = ["Blink", "Freakonomics", "Outliers"]

# books = books.shuffle

# puts books




# player1 = Player.new("moe")
# player2 = Player.new("larry", 60)
# player3 = Player.new("curly", 135)

# players = [player1, player2, player3]

# puts "There are #{players.size} players in the game:"

# players.each do |p|
# 	puts p
# end

# # players.each do |player|
# # 	puts player
# # end

# # players.each do |player|
# # 	puts player.health
# # end

# players.pop
# player4 = Player.new("Shemp", 90)
# players.push(player4)




# players.each do |player|
# 	player.blam
# 	player.woot
# 	player.blam

# 	puts player
# end

require_relative 'player'
require_relative 'game'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)
    
knuckleheads = Game.new("knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(3)



# knuckleheads = Game.new("knuckleheads")
# player3 = Player.new("curly", 125)
# knuckleheads.add_player(player3)
# knuckleheads.play





















































































































