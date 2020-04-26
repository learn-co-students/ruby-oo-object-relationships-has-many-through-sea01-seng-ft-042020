class Meal
attr_accessor :waiter, :customer, :total, :tip
@@all = []
def initialize (waiter, customer, total, tip)
  @total = total
  @tip = tip
  @waiter = waiter
  @customer = customer
  @@all << self
end
def self.all
  @@all
end
end
