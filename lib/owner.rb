class Owner
  
  @@all = []
  
  attr_accessor :name, :pets
  
  attr_reader :species
  
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def species(species)
    @species = species
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
end