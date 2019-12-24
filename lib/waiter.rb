class Waiter
  attr_accessor :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select{|meal| meal.waiter == self}
  end

  def best_tipper
    best_tipped_meal = meals.max do |meal_1, meal_2|
      meal_1.tip <=> meal_2.tip
    end

    best_tipped_meal.customer
  end


end
