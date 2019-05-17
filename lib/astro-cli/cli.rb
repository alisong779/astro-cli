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
        sign_details
      elsif input == 3
        planet_details 
      else 
        puts "Please enter a valid selection:".red 
      end 
    end 
  end 
  
    
  def sign_details 
      list_signs
      puts "Please type the number of your sign:"
      input = gets.strip.to_i 
      sign = Sign.all[input-1]
      Scraper.scrape_sign_traits(sign) if sign.traits == nil 
      print_sign(sign) 
      sub_menu #ask to see planet details, if yes print and return here, if no done
       #list sign, list planets, pick a sign, pick a planet, within list sign - see planet details
    end 
 
    def print_sign(sign)
      puts "Sign Details: #{sign.traits}"
    end 
    
    def list_signs
        Sign.all.each.with_index(1) do |sign, index|
          puts "#{index} - #{sign.name}"          
        end 
    end 
   
    def planet_details 
      #same as sign_details 
      puts "Planet Details:"
    end 
    
    def sub_menu
      input = nil 
      puts " "
      puts  "Enter your selection:"
      puts  "1.To see your Planet Details"  
      puts  "2.Go back to main menu"
      puts  "3.Exit"
      puts " "
        
      input = gets.strip.to_i
        if input == 1 
          planet_details 
          #if yes - print planet details 
        elsif input == 2 
          menu 
        elsif input == 3
          puts "See ya later!".blue 
          exit 
        else 
          puts "Please enter a valid selection:".red 
      end 
    end 
end 

