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
    Sign.all.find {|s| name == s.name}        #call planet?
  end 
  
  def scrape_traits(sign)
    Scraper.scrape_sign_traits(sign)    #how do I pass the sign in?
  end 
  
  def scraped_traits
    Sign.all.each do |sign|
        puts "#{sign.name} traits: #{sign.traits}" 
      end
  end 
  
  #each instance needs to know its planet, dates and traits
  #each sign belongs to a planet
  
end 