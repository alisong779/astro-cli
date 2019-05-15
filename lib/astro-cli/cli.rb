class CLI  
 
  def run 
      binding.pry 
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
      
      # input = ""
      # puts "Enter the number of the date range that includes your birthday:"
      #puts a list of astrological signs with dates (scraped data) OR
      # use if else statment - calling the appropriate sign numbers from Signs #class.
      end 
    
    def astro_traits
      # input = ""
      # puts a list of astrological signs with dates (scraped data)
      # puts pick your sign from the list 
      # calls on the correct sign traits from sign class
      end 
   
    def astro_planets
      # input = ""
      # puts a list of astrological signs with dates (scraped date)
      #puts "pick your sign from the list"
      #calls on the correct planet details - associated with the sign 
  end 
end 

