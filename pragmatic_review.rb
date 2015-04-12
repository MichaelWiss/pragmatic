
# def time
#   current_time = Time.new
#   current_time.strftime("%I:%M:%S")
# end



# def say_hello(name, health=100)
#   "I'm #{name.capitalize} with a health of #{health} as of #{time}."
# end

# puts say_hello("larry")

# puts say_hello("moe", 200)

class Player
	def initialize(name, health=100)
		@name = name
		@health = health
	end

	def say_hello
		"I'm #{@name} with a health of #{@health}."
    end
end


player1 = Player.new("moe", 100)
puts player1.say_hello

