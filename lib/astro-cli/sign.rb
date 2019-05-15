class Sign
  attr_accessor :name, :traits, :url 
  
  @@all = []
  def initialize
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  
end 