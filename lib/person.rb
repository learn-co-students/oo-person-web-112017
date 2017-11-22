require "pry"

class Person

  attr_reader :name, :happiness, :hygiene
  attr_writer
  attr_accessor :bank_account

  def initialize(person_name, bank_account = 25, happiness = 8, hygiene = 8)
    @name = person_name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(happiness_index)
    case
    when happiness_index < 0
      @happiness = 0
    when happiness_index > 10
      @happiness = 10
    else
      @happiness = happiness_index
    end
  end

  def hygiene=(hygiene_index)
    case
    when hygiene_index < 0
      @hygiene = 0
    when hygiene_index > 10
      @hygiene = 10
    else
      @hygiene = hygiene_index
    end
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case
    when topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end

#binding.pry
