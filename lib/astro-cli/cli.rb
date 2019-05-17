class CLI  
 
  def run 
    input = ""
    puts "Hello There! Welcome to your Astrology Source!".blue
    Scraper.scrape_signs_and_planets
    menu 
  end 
  
  def menu
    input = nil 
    while input != 4 
    puts "
    "
    puts "1. To find out what your Astrological Sign is, enter '1'."
    puts "2. To learn about the specific traits of your Astrological Sign, enter '2'."
    puts "3. To learn about the planet that rules your life, type '3'."
    puts "4. To exit, type '4'"
    puts "What would you like to do?"
    
    input = gets.strip.to_i 
  
    if input == 4
      puts "See ya later!".blue 
      exit 
      
    elsif input == 1
        list_signs
      elsif input == 2
        astro_traits
      elsif input == 3
        astro_planets
      else 
        puts "Please enter a valid selection:".red 
      end 
    end 
  end 
  
    
  def astro_traits
    #needs to list all signs 
    #ask for input to select sign
    #call on the scraped traits for the sign entered 
    #submenu 
    
      input = " "
      list_signs
      puts "Please type the name of your sign:"
      input = gets.strip
      sign = input 
      Sign.scrape_traits(sign) 
      sub_menu
    end 
 
    
    def list_signs
      #needs to list all signs with index and dates 
    Sign.all.each_with_index(1) do |index, sign|
      puts "#{index} - #{sign.name} - #{sign.dates}"           #need to add dates from sign traits scraper 
    end 
  end 
   
    def astro_planets
      #needs to list all signs with index and dates
      #ask to input sign name 
      #needs to use the Sign find by name method to find the sign and its planet 
      #needs to use the Planet find by name method to find the planet and its details 
      
      input = ""
      list_signs
      puts "Enter the name of your sign:"
      input = gets.strip
      name = input 
      Sign.find_by_name(name)
      
                                                              #need to call on the sign planet then planet details
    end 
    
    def sub_menu
      input = nil 
      puts "
      "
      puts "1. Go back to main menu"
      puts "2. Exit"
      
      input = gets.strip.to_i
      if input == 1 
        menu 
      elsif input == 2 
        exit 
      else 
        puts "Please enter a valid selection:".red 
      end 
    end 
end 

