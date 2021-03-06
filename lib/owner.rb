require 'pry'

class Owner
  attr_reader :species
  attr_accessor :pets, :name

  @@all = []

  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
    @species = species
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end


  def say_species
    "I am a #{self.species}."
  end

   def name
     @name
   end

   def buy_fish(name)
     self.pets[:fishes] << Fish.new(name)
   end

   def buy_cat(name)
      self.pets[:cats] << Cat.new(name)
   end


   def buy_dog(name)
     self.pets[:dogs] << Dog.new(name)
   end


   def walk_dogs
    self.pets[:dogs].each do |mood|
      mood.mood = "happy"
    end
   end

   def play_with_cats
     self.pets[:cats].each do |mood|
       mood.mood = "happy"
     end
    end

   def feed_fish
    self.pets[:fishes].each do |mood|
      mood.mood = "happy"
    end
   end

   def sell_pets
     pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
       end
     end
     pets.clear
   end

   def list_pets
    fish_number = self.pets[:fishes].size
    dog_number = self.pets[:dogs].size
    cat_number = self.pets[:cats].size
    return "I have #{fish_number} fish, #{dog_number} dog(s), and #{cat_number} cat(s)."
   end

end
