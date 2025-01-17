class Owner
  # code goes here
   attr_accessor :name, :pets
   attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
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
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end
  def walk_dogs
    pets[:dogs].each { |dog| dog.mood = "happy"}
  end
  def play_with_cats
    pets[:cats].each { |cat| cat.mood = "happy"}
  end
  def feed_fish
    pets[:fishes].each { |fish| fish.mood = "happy"}
  end
  def sell_pets
    pets.each do |species, pets|
      pets.each { |pet| pet.mood = "nervous"}
    end
    pets.clear
  end



  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end
  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end
  




end