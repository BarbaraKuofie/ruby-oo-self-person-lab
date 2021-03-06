# your code goes here
class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    def initialize(name, num=25)
        @name = name 
        @bank_account = num 
        num = num 
        @happiness = 8 
        @hygiene = 8
    end 

    def happiness=(value)
        @happiness = value
        if @happiness < 0 
            @happiness = 0 
        elsif @happiness > 10
            @happiness = 10
        else 
            @happiness = value 
        end 
    end

    def hygiene=(value)
        @hygiene = value
        if @hygiene < 0 
            @hygiene = 0 
        elsif @hygiene > 10
            @hygiene = 10
        else 
            @hygiene = value 
        end 
    end

    def happy?
        if @happiness > 7 
          true 
        else
          false
        end   
    end
    
    def clean?
        if @hygiene > 7 
            true 
          else
            false
          end   
      end

      def get_paid(salary)
        @bank_account += salary 
        return "all about the benjamins"
      end 

      def take_bath 
        self.hygiene = @hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
      end 

      def work_out 
        self.hygiene = @hygiene -= 3 
        self.happiness = @happiness += 2
        return "♪ another one bites the dust ♫"
      end 

      def call_friend(friend)
         self.happiness +=3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
      end 
    
      def start_conversation (person, topic)
        if topic == 'politics'   
          person.happiness -=2
          self.happiness -=2
          return "blah blah partisan blah lobbyist"
        end 
        if topic == 'weather'
          person.happiness += 1
          self.happiness +=1
          return "blah blah sun blah rain"
        end 
        return "blah blah blah blah blah"
      end 
end 
