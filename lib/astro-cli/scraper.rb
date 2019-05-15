class Scraper 
  
  def self.scrape_signs_and_planets
      html = open("https://www.astrology.com/astrology-101")
      doc = Nokogiri::HTML(html)
      self.scrape_signs
      self.scrape_planets
  end 
  
  def self.scrape_signs
      get_page.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[0].css("a").each do |sign|
      new_sign = Sign.new 
      new_sign.name = sign.text.strip 
      new_sign.url = " "
      end 
       binding.pry 
      # [0..11].text
      #0..11 all signs in one string 
  end 
  
   def self.scrape_planets
        planet_name = get_page.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[1].css("a").each do |planet|
        new_planet = Planet.new 
        new_planet.name = planet.text.strip
        new_planet.url = " "
      # [0..10].text
  end 
  
  def self.scrape_sign_traits
      sign_traits = get_page.css(“.body”)[0].css(“p”)[2].text
  end
    
  def self.scrape_planet_deets
      planet_deets = get_page.css(".body").css("p")[0..10].text 
  end 
end 
