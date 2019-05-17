class Sign
  attr_accessor :name, :traits, :url, :planet, :dates  
  
  @@all = []
  def initialize
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
   def self.find_by_name(name)
    Sign.all.find {|p| name == p.name}
  end 
  
  
  #each instance needs to know its planet, dates and traits
  #each sign belongs to a planet
  
end 