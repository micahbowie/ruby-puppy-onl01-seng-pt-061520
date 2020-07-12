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
    unique = @@all_names.uniq
    unique.each do |puppy|
      puts "#{puppy}"
    end 
  end 
  
  def self.clear_all
    @@all.clear
  end 
  
  def save
    @@all.push(self)
  end 
  
end 
