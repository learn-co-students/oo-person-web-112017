# your code goes here
require 'pry'

class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name, :topic
  #attr_writer

  @@people = []

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @topic = topic
    @@people << name
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    hygiene
    self.happiness += 2
    happiness
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    self.happiness
    friend
    #if @@people.include?(friend) && friend != self
    friend.happiness += 3
    happiness
    #end
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (friend, topic)
    if topic == "politics"
      friend.happiness -= 2
      happiness
      self.happiness -= 2
      happiness
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      friend.happiness += 1
      happiness
      self.happiness += 1
      happiness
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end



  # def happiness(happiness_change)
  #   self.happiness +=

  # def bank_account(change)
  #   self.bank_account += change
  # end

end
