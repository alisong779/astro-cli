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
      puts "1. To see a list of Astrological Signs, enter '1'."
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
      list_signs
      puts "Please type the number of your sign:"
      input = gets.strip.to_i 
      sign = Sign.all[input-1]
      Scraper.scrape_sign_traits(sign) if sign.traits == nil 
      print_sign(sign) #print all details - arg of sign to print 
      sub_menu #ask to see planet details, if yes print and return here, if no done
    end 
 
    def print_sign(sign)
      puts "Sign Details:"
    end 
    
    def list_signs
      #needs to list all signs with index and dates 
        Sign.all.each.with_index(1) do |sign, index|
          puts "#{index} - #{sign.name}"          
        end 
    end 
   
    def astro_planets
      #same as astro traits 
      
      input = ""
      list_signs
      puts "Enter the name of your sign:"
      input = gets.strip
      name = input 
     
    end 
    
    def sub_menu
      input = nil 
      puts " "
      puts "Enter your selection:"
      puts "1.Planet Details  
            2. Go back to main menu"
      puts "3. Exit"
      puts " "
      #if yes - print planet details 
      #list astro traits 
      #list sign, list planets, pick a sign, pick a planet, within list sign - see planet details 
      
      input = gets.strip.to_i
      if input == 1 
        menu 
      elsif input == 2 
      puts "See ya later!".blue 
        exit 
      else 
        puts "Please enter a valid selection:".red 
      end 
    end 
end 

