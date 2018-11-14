class Owner
  
  @@all = []
  
  attr_accessor :pets
  
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
end