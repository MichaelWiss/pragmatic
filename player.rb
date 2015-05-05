class Player
	attr_accessor :name
    attr_reader :health


	def initialize(name, health=100)
		@name = name.capitalize
		@health = health
        @found_treasures = Hash.new(0)
    end

    def found_treasure(treasure)
        @found_treasures[treasure.name] +=treasure.points
        puts "#{@name} found a #{treasure.name} worth #{treasure.points} points."
        puts "#{@name}'s treasures: #{@found_treasures}"
    end

    def points
        @found_treasures.values.reduce(0, :+)
    end

    def hit?
        @health >=160
    end

    def strong?
        @health > 100
    end

    def blam
    	@health -=10
    	puts "#{@name} got blammed!"
    end

    def woot
    	@health +=15
    	puts "#{@name} got wooted!"
    end

    def score
    	@health + @name.length
    end

    def name=(new_name)
        @name = new_name.capitalize
    end


    def to_s
    	"#{@name} has a health of #{@health} and a score of #{score}."
    end


    def <=>(other)
        other.score <=> score
    end
 
end


if __FILE__ == $0
player = Player.new("moe")
puts player.name
puts player.health
player.woot
puts player.health
player.blam
puts player.health
end