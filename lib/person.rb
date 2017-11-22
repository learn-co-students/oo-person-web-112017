# your code goes here
require 'pry'

class Person

  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(hygiene)
      # binding.pry
    if hygiene >10
      @hygiene = 10
    elsif hygiene <0
      @hygiene = 0
    else
      @hygiene = hygiene
    end
  end

  def happiness=(happiness)
    if happiness >10
      @happiness = 10
    elsif happiness <0
      @happiness = 0
    else
      @happiness = happiness
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account+=salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene+=4
    self.hygiene=(@hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness+=2
    self.happiness=(@happiness)
    @hygiene-=3
    self.hygiene=(@hygiene)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    @happiness+=3
    self.happiness=(@happiness)

    x = friend.happiness + 3
    friend.happiness=(x)
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      @happiness -=2
      self.happiness=(@happiness)
      person.happiness=(person.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      @happiness +=1
      self.happiness=(@happiness)
      person.happiness=(person.happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
