class Sign
  attr_accessor :name, :traits, :url, :planet, :dates  
  
  @@all = []
  def initialize
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  
end 