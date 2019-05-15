class Sign
  attr_accessor :name, :traits, :url, :planet 
  
  @@all = []
  def initialize
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  
end 