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
    #Sign.all.each do |name|
      # puts "#{name} - #{Sign.dates}"
      # puts all signs with dates
      # puts out the menu again
  end 
      
  def astro_traits
      # input = ""
      # puts all signs with dates, ask user to enter sign name 
      # compare input to all signs, find the sign instance with the name attr that matches the input, then puts the sign.traits: 
        #find_by_name
      # puts out the menu again 
    end 
   
    def astro_planets
      # input = ""
      # puts all signs with dates, ask user to enter the sign name 
      #find_by_name used to find the sign instance that matches input
      #puts sign.planet 
      #puts planet.details - must associate with previous step 
      #puts out the menu again
    end 
end 

