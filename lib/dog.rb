class Dog 
  @@all = []
  @@all_names = []
  attr_accessor :name 
  
  def initialize(name)
    @name = name
    @@all_names << name
    save
  end 
  
  def self.all 
    @@all
  end 
  
 def self.print_all
    @@all.each do |dog|
      puts dog.name
    end
  end
  
  def self.clear_all
    @@all.clear
  end 
  
  def save
    @@all.push(self)
  end 
  
end 
