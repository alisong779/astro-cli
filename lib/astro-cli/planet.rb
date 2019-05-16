class Planet
  attr_accessor :name, :details, :url  
  
  @@all = []
  
  def initialize
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
end 

#each instance needs to know its details and which Sign it belongs to 
