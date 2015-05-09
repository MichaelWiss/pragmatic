  module StudioGame
   module Playable


    def strong?
       self.health > 100
    end

    def blam
        self.health -=10
        puts "#{@name} got blammed!"
    end

    def woot
        self.health +=15
        puts "#{@name} got wooted!"
    end

  end
 end