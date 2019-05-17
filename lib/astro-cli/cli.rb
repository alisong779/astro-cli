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
        puts "Please enter a valid choice:".red 
      end 
    end 
  end 
  
    
  def astro_traits
    #needs to list all signs 
    #ask for input to select sign
    #call on the scraped traits for the sign entered 
    #submenu 
      input = " "
      puts "Please type the name of your sign:"
      input = gets.strip
      sign = input 
      Sign.scrape_traits(sign) 
      sub_menu
    end 
 
    
    def list_signs
    Sign.all.each_with_index(1) do |index, sign|
      puts "#{index} - #{sign.name} - #{sign.dates}"           #need to add dates from sign traits scraper 
    end 
  end 
   
    def astro_planets
      input = ""
      puts "Enter the name of your sign:"
      input = gets.strip
      name = input 
      Sign.find_by_name(name)
      
      #need to call on the sign planet then planet details
    end 
    
    def sub_menu
      
      
end 

