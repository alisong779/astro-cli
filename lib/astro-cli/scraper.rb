class Scraper 
  
  def self.get_page
    html = open("https://www.astrology.com/astrology-101")
    doc = Nokogiri::HTML(html)
    # binding.pry 
  end 
  
  def self.scrape_sign_names
      sign_name = get_page.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[0].css("a")[0..10].text
      #only puts out 1 sign 
      
      #doc.css(".zodiac-101-links")[0].css(".grid-new.grid-4")[0].css("a")[0].text
  end 
end 
