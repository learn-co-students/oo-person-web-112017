class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

#  def bank_account
#    @bank_account
#  end

  def bank_account=(input)
    @bank_account += input
  end


  def happiness=(happiness)
    if happiness.between?(0,10)
    @happiness = happiness
    elsif
     happiness < 0
      @happiness = 0
      @happiness
    else
      @happiness = 10
      @happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene.between?(0,10)
    @hygiene = hygiene
    elsif
     hygiene < 0
      @hygiene = 0
      @hygiene
    else
      @hygiene = 10
      @hygiene
    end
  end

  def hygiene
    @hygiene

  end

  def happiness
    @happiness
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene -3)
    self.happiness=(@happiness +2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    friend = person
    friend.happiness=(friend.happiness + 3)
    self.happiness=(@happiness + 3)
    "Hi #{person.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness=(@happiness - 2)
      person.happiness=(person.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness=(@happiness + 1)
      person.happiness=(person.happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end
