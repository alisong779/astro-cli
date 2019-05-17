class Scraper 
  
  def self.scrape_signs_and_planets
       
    html = open("https://www.astrology.com/astrology-101")
    doc = Nokogiri::HTML(html)
      
    doc.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[0].css("a").each do |sign|
      new_sign = Sign.new 
      new_sign.name = sign.text.strip.split(" ")[0] 
      new_sign.url = sign.attribute("href").value.strip
    end 
      
    doc.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[1].css("a").each do |planet|
      new_planet = Planet.new 
      new_planet.name = planet.children[3].text
      new_planet.url = planet.attribute("href").value.strip
    end 
  end 
  
  def self.scrape_sign_traits(sign)
    html = open(sign.url)
    doc = Nokogiri::HTML(html)
    
    sign.traits = doc.css(".body")[0].css("p")[2].text 
    sign.dates = doc.css(".body")[0].css("p")[1].children[1].text.strip
    name = doc.css(".body")[0].css("p")[1].children[13].text.strip
    sign.planet = Planet.find_by_name(name)
  end
    
  def self.scrape_planet_deets(planet)
    html = open(planet.url)
    doc = Nokogiri::HTML(html)
    planet.details = doc.css(".body").css("p")[0].children[0].text 
  end 
end 
