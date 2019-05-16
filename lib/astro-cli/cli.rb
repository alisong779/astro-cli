class CLI  
 
  def run 
    input = ""
    puts "Hello There! Welcome to your Astrology Source!"
    Scraper.scrape_signs_and_planets
    puts "To find out what your Astrological Sign is, enter 'sign'."
    puts "To learn about the specific traits of your Astrological Sign, enter 'traits'."
    puts "To learn about the planet that rules your life, type 'planet'."
    puts "To quit, type 'exit'."
    puts "What would you like to do?"
  
    until input == "exit"
      input = gets.strip
      if input == "sign"
        astro_signs
      elsif input == "traits"
        astro_traits
      elsif input == "planet"
        astro_planets
      else
        puts "Please enter a valid choice:" 
      end 
    end 
  end 
  
    
  def astro_signs
    Sign.all.each do |name|
      puts "#{name.name} - #{name.dates}"
    end 
  end 
      
  def astro_traits
      input = ""
      puts "Enter the name of your sign:"
      input = gets.strip
        
      Scraper.scrape_sign_traits(input)
      Sign.all.each do |name|
        puts "#{name.name} - #{name.dates}"
      end 
    end 
   
    def astro_planets
      input = ""
      puts "Enter the name of your sign:"
      input = gets.strip
        Scraper.scrape_planet_deets(input)
      Sign.all.each do |name|
        puts "#{name.name} - #{name.dates}"
      end 
    end 
end 

