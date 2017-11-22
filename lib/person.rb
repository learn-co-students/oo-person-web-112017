# your code goes here
class Person

  attr_reader :name, :happiness
  attr_writer :bank_account


  def initialize (name)
    @name = name
    @original_amount = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene
    @hygiene
  end

  def bank_account
    @original_amount
  end

  def hygiene=(hygiene_score)
    if hygiene_score < 11 && hygiene_score > 0
      @hygiene = hygiene_score
    elsif hygiene_score > 10
      @hygiene = 10
    else
      @hygiene = 0
    end
  end

  def happiness=(happy_score)
    if happy_score < 11 && happy_score > 0
      @happiness = happy_score
    elsif happy_score > 10
      @happiness = 10
    else
      @happiness = 0
    end
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @original_amount += salary
    "all about the benjamins"
  end

  def take_bath
    new_score = @hygiene += 4
    self.hygiene = new_score
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    new_hygiene = @hygiene -= 3
    self.hygiene = new_hygiene
    new_happy = @happiness += 2
    self.happiness = new_happy
    "♪ another one bites the dust ♫"
  end

  def call_friend(name)
    self.happiness += 3
    name.happiness += 3
    "Hi #{name.name}! It's #{@name}. How are you?"
  end

  def start_conversation(name, topic)
    if topic == "politics"
      self.happiness -= 2
      name.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      name.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


end
