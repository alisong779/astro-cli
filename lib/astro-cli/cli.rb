class CLI  
 
  def run 
    input = ""
    puts "Hello There! Welcome to your Astrology Source!"
    Scraper.scrape_signs_and_planets
    binding.pry 
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
    #Sign.all.each do |name|
      # puts "#{name.name} - #{name.dates}"
      # puts all signs with dates
      # run 
  end 
      
  def astro_traits
      # input = ""
      #Sign.all.each do |name|
      # puts "#{name.name} - #{name.dates}"
      #puts "Enter the name of your sign:"
        #Scraper.scrape_sign_traits(input)
      # run 
    end 
   
    def astro_planets
      # input = ""
      #Sign.all.each do |name|
      # puts "#{name.name} - #{name.dates}"
      #puts "Enter the name of your sign:"
      #Scraper.scrape_planet_deets(input)
      #run 
    end 
end 

