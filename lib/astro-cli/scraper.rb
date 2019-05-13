class Scraper 
  
  html = open("https://www.astrology.com/astrology-101")
  doc = Nokogiri::HTML(html)
  binding.pry 
end 