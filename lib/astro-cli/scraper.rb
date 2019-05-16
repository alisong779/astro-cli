class Scraper 
  
  def self.scrape_signs_and_planets
       
    html = open("https://www.astrology.com/astrology-101")
    doc = Nokogiri::HTML(html)
      
    doc.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[0].css("a").each do |sign|
      new_sign = Sign.new 
      new_sign.name = sign.text.strip 
      new_sign.url = sign.attribute("href").value.strip
      new_sign.dates = " "
      new_sign.planet = " "
    end 
      
    doc.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[1].css("a").each do |planet|
      new_planet = Planet.new 
  #new_sign.planet = planet.text.strip
      new_planet.name = planet.text.strip
      new_planet.url = planet.attribute("href").value.strip
    end 
      
  def self.scrape_sign_traits(new_sign)       
    html = open(new_sign.url)
    doc = Nokogiri::HTML(html)
    
    new_sign.traits = doc.css(".body")[0].css("p")[2]
  
    new_sign.dates = doc.css(".body")[0].css("p")[1]
     binding.pry 
  end 
    
                                                #associating the planet, traits and dates to the sign?
                                                #argument error? not sure how to pass in the url?
                                                #Planet.all - need to remove the \r\n
                                                #should I split / index on scraper or object methods?
  
  
#   def self.scrape_sign_traits(new_sign)       
#     html = open(new_sign.url)
#     doc = Nokogiri::HTML(html)
    
#     new_sign.traits = doc.css(".body")[0].css("p")[2]
  
#     new_sign.dates = doc.css(".body")[0].css("p")[1]
#     binding.pry 
#   end
    
#   def self.scrape_planet_deets(new_planet)
#     html = open(new_planet.url)
#     doc = Nokogiri::HTML(html)
  
#     new_planet.details = doc.css(".body").css("p")[0].text 
#   end 
# end 
