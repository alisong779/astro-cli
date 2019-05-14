class Signs
  attr_accessor :name :traits
  
  @@all = []
  def initialize
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  
end 