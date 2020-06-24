      require "pry"


# your code goes here
class Person
   attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  
  #set hygiene and happiness in the range (0..10)
  
def hygiene=(point) 
    @hygiene = point 
    if @hygiene > 10 
       return @hygiene = 10 
    elsif @hygiene < 0 
       return @hygiene = 0 
    end 
  end 
  def happiness=(point) 
    @happiness = point
    if @happiness > 10 
       @happiness = 10 
    elsif @happiness < 0 
       @happiness = 0 
    end 
  end
  
  def clean?
    if @hygiene> 7
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
    self.happiness= @happiness + 3
    friend.happiness= friend.happiness + 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  
  def start_conversation(friend,topic)
    
    if topic == "politics"
      self.happiness= @happiness - 3
      friend.happiness= friend.happiness - 3
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness= @happiness + 2
      friend.happiness= friend.happiness + 2
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end







