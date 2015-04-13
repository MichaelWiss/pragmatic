
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
	attr_reader :health
	attr_accessor :name
	def initialize(name, health=100)
		@name = name
		@health = health
	end

	def say_hello
		"I'm #{@name} with a health of #{@health}."
    end

    def score
    	@health + @name.length
    end

    def name=(new_name)
    	@name = new_name.capitalize
    end

    def to_s
    	"I'm #{@name} with a health of #{@health} and a score of #{score}."
    end

   
end


player1 = Player.new("moe", 100)
player2 = Player.new("larry", 100)
puts player1.say_hello
puts player2.say_hello
puts player2.health
player2.name = "lawrence"
player1.name = "moe"
puts player2.name
puts player2.to_s
puts player1.to_s
puts player1.name


