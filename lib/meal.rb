class Meal
    attr_accessor :waiter, :customer, :total, :tip

    @@all = []

    def initialize(total,tip=0, customer, waiter)
        @total = total
        @tip = tip
        @customer = customer
        @waiter = waiter
        @@all << self
    end

    def self.all
        @@all
    end
end