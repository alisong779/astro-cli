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
  
  def scrape_planets(planet) 
    Scraper.scrape_planet_deets(planet)
    Planet.all.each {|planet| puts planet.details}
  end 
end 

