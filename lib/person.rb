# your code goes here
class Person
    attr_accessor  :bank_account, :happiness, :hygiene
    attr_reader :name
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

     def happiness=(num)
    @happiness =  if num > 10
                    10
                  elsif num < 0
                    0
                  else
                    num
                  end
  end

  def hygiene=(num)
    @hygiene =  if num > 10
                  10
                elsif num < 0
                  0
                else
                  num
                end
  end
  def clean?
    self.hygiene > 7
  end
  def happy?
    self.happiness > 7
  end
  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end
  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
end