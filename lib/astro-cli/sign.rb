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
    Sign.all.find {|s| name == s.name}       
  end 

end 