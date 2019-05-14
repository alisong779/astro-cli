class Scraper 
  
  def self.scrape_signs
    html = open("https://www.astrology.com/astrology-101")
    doc = Nokogiri::HTML(html)
    binding.pry 
  end 
  
  #Signs:
  #Aries = doc.css("icon-aries-symbol").text 
 
  
  def self.scrape_traits
    html = open("https://www.astrology.com/astrology-101/zodiac-signs/aries")
    doc = Nokogiri::HTML(html)
 end 
end 