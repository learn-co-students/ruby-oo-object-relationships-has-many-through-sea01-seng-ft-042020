class Waiter
    attr_reader :name, :years

    @@all = []
    
    def initialize(name, years)
        @name = name
        @years = years

        @@all << self
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select {|meal| meal.waiter == self}
    end

    def best_tipper
        meals.max_by {|meal| meal.tip}.customer
    end

    def self.all
        @@all
    end
end