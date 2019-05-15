class Scraper 
  
  def self.get_page
      html = open("https://www.astrology.com/astrology-101")
      doc = Nokogiri::HTML(html)
  end 
  
  def self.scrape_sign_names
      sign_name = get_page.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[0].css("a")[0..11].text
      #0..11 all signs in one string 
      
  end 
  
  def self.scrape_sign_traits
      sign_traits = get_page.css(“.body”)[0].css(“p”)[2].text
  end
  
  def self.scrape_planets
    binding.pry 
      planet_name = get_page.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[1].css("a")[0..10].text
  end 
    
  def self.scrape_planet_deets
      planet_deets = get_page.css(".body").css("p")[0..10].innerText
  end 
end 
