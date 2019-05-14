class Scraper 
  
  def self.scrape_signs
    html = open("https://www.astrology.com/astrology-101")
    doc = Nokogiri::HTML(html)
    
  end 
  
  def scrape_sign_names
      html = open("https://www.astrology.com/astrology-101")
      doc = Nokogiri::HTML(html)
      doc.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[0].css("a")[0].text
      # binding.pry 
  end 
end 
#   def self.scrape_traits
#     html = open("https://www.astrology.com/astrology-101")
#     doc = Nokogiri::HTML(html)
# end 
# end 