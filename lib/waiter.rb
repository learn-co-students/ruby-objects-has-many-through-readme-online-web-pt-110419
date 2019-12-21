class Waiter
 
  attr_accessor :name, :yrs_experience
 
  @@all = []
 
  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
  end
 
  def self.all
    @@all
  end
 
end

  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end
  
  sam = Customer.new("Sam", 27)
  pat = Waiter.new("Pat", 2)
  alex = Waiter.new("Alex", 5)
 
  sam.new_meal(pat, 50, 10)
  
  sam.new_meal(alex, 20, 3)
  
   pat.new_meal(sam, 30, 5)