# your code goes here
class Person

attr_accessor :bank_account
attr_reader :happiness, :hygiene

def initialize(name, happiness = 8, bank_account =25, hygiene =8 )
	@name = name
	@bank_account = bank_account
	@happiness = happiness
	@hygiene = hygiene
end

def name
	@name
end

def bank_account
	@bank_account
end

def happiness=(new_happiness)
	if new_happiness > 0 && new_happiness <= 10
		@happiness = new_happiness
	elsif new_happiness > 10 
		@happiness = 10
	elsif new_happiness < 0
		@happiness = 0
	end
end

def hygiene=(new_hygiene)
	if new_hygiene > 0 && new_hygiene <= 10
		@hygiene = new_hygiene
	elsif new_hygiene > 10
		@hygiene = 10
	elsif new_hygiene < 0 
		@hygiene = 0
	end	
end


def happy?
	@happiness > 7
end

def clean?
	@hygiene > 7
end

def get_paid(salary)
	@bank_account = @bank_account + salary
	return "all about the benjamins"
end


def take_bath
	self.hygiene +=4
	return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
	self.hygiene -=3
	self.happiness +=2
	return "♪ another one bites the dust ♫"
end

def call_friend(friend)
	self.happiness +=3
	friend.happiness +=3

	return "Hi #{friend.name}! It's #{self.name}. How are you?"
end


def start_conversation(person, topic)
	if topic == "politics"
		person.happiness -= 2
		self.happiness -= 2
		"blah blah partisan blah lobbyist" 
	elsif topic == "weather"
		person.happiness += 1
		self.happiness +=1
		"blah blah sun blah rain" 
	elsif topic  != "politics" || "weather"
		"blah blah blah blah blah"
	end
end




end