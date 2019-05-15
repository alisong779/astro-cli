class Planet
  attr_accessor :name, :description, :url  
  
  @@all = []
  
  def initialize
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
end 