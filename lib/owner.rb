require 'pry'

class Owner
attr_reader :name, :species
     @@all = []
    def initialize(name)
      @name = name
      @species = "human"
      @@all.push(self)
    end 

    def say_species
      "I am a #{@species}."
    end

    def self.all
      @@all 
    end

    def self.count
      @@all.length
    end 

    def self.reset_all
      @@all = [] 
    end 
    
    def cats
      Cat.all.select{|cat|cat.owner == self}
    end
    binding.pry


end


class Cat
  attr_reader :name 
  attr_accessor :owner, :mood 
  @@all = [] 
  def initialize(name, owner)
    @name = name
    @owner = owner 
    @mood = "nervous"
    @@all << self 
  end 
  def self.all
    @@all 
  end
end

#binding.pry








