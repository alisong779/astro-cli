class CLI  
 
  def run 
    input = ""
    puts "Hello There! Welcome to your Astrology Source!"
    Scraper.scrape_sign_traits
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
    input = ""
    puts "Please enter the number for your sign:"
    Sign.all.each_with_index do |sign, index|
        puts "#{index+1}. #{sign.name}"
      end 
  end 
      # associates input to correct sign instance by name 
     
    
    def astro_traits
      # input = ""
      # puts all signs with dates, ask user to pick sign:
      # associates user input to the correct sign instance by name (if input == 1 , call sign instance with name aries)
      # puts the traits attribute for the correct sign instance (aries.traits)
      # puts out the menu again 
      end 
   
    def astro_planets
      # input = ""
      # puts all signs
      #associates user input to the correct planet instance 
      #puts the details attribute for the correct planet instance 
      #puts out the menu again
    end 
end 

