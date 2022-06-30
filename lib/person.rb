# your code goes here
class Person 
    attr_reader :name
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness
        @happiness
    end

    def happiness=(happy)
        if happy >= 0 && happy <= 10 
            @happiness = happy
        elsif happy < 0
            @happiness = 0 
        elsif happy > 10 
            @happiness = 10
        end

    end 

    def hygiene
        @hygiene
    end

    def hygiene=(hygiene)
        if hygiene >= 0 && hygiene <= 10 
            @hygiene = hygiene
        elsif hygiene < 0
            @hygiene  = 0 
        elsif hygiene > 10 
            @hygiene = 10
        end

    end 

    def clean?
        if self.hygiene > 7
            return true
        else 
            return false 
        end
    end

    def happy?
        if self.happiness > 7
            return true
        else
            return false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end
    
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            friend.happiness += 1
            self.happiness += 1 
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end