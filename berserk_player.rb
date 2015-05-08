require_relative 'player'

class BerserkPlayer < Player
	def initialize (name, health=100)
		super(name, health)
		@woot_count = 0
	end

	def berserk?
        @woot_count > 5
    end

    def woot 
    	super
    	@woot_count +=1
    	puts "#{@name} is berserk!" if berserk?
    end

    def blam
       if berserk?
        woot
    else
        super
      end

      # or use the ternary operator:
    # berserk? ? w00t : super
    end

 end

    if __FILE__ == $0
      berserker = BerserkPlayer.new("berserker", 50)
      6.times { berserker.woot }
    end

