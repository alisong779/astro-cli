class Planet
  attr_accessor :name, :details, :url  
  
  @@all = []
  
  def initialize
    @@all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def self.find_by_name(name)
    Planet.all.find {|p| name == p.name}
  end

end 

