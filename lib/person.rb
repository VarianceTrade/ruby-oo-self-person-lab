# your code goes here

class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def bank_account    
        @bank_account
    end

    def happiness 
        @happiness
    end

    def hygiene
        @hygiene
    end

    def happiness=(happiness)
        if happiness >= 10
            @happiness = 10
        elsif happiness <= 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene >= 10
            @hygiene = 10
        elsif hygiene <= 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def bank_account=(amount)
        @bank_account = amount
    end

    def happy?
        if happiness > 7
            return true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            return true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account = self.bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.hygiene = self.hygiene - 3
        self.happiness = self.happiness + 2
        return "♪ another one bites the dust ♫"
    end


    #
    # person_1 = Person.new("Mark", 34, 180)
    # person_2 = Person.new("Jeff", 31, 190)
    # person_1.call_friend(person_2)
    # 
    # 
    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(starter, topic)
        if topic == "politics"
            self.happiness = self.happiness - 2
            starter.happiness = starter.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            starter.happiness = starter.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
    
end


