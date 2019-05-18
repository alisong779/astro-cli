class CLI  
 
  def run 
    input = ""
    puts "Hello There! Welcome to your Astrology Source!".cyan
    Scraper.scrape_signs_and_planets
    menu 
  end 
  
  def menu
    input = nil 
    while input != 4 
      puts "
      "
      puts "1. To see a list of Astrological Signs, enter '1'."
      puts "2. To learn all of the details of your Astrological Sign, enter '2'."
      puts "3. To learn about the planet that rules your life, type '3'."
      puts "4. To exit, type '4'"
      puts "What would you like to do?"
    
      input = gets.strip.to_i 
      if input == 4
        puts "See ya later!".cyan 
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
    if (1..11).include?(input)
      sign = Sign.all[input-1]
      Scraper.scrape_sign_traits(sign) if sign.traits == nil 
      print_sign(sign) 
      sub_menu
    else 
      puts "Please enter a valid selection!".red
    end
  end 
 
  def print_sign(sign)
    puts "Sign Details:
      #{sign.name}
      #{sign.dates}
      #{sign.traits}
      #{sign.planet}".green
  end 
    
  def list_signs
    Sign.all.each.with_index(1) do |sign, index|
      puts "#{index} - #{sign.name}"          
    end 
  end 
    
  def list_planets
    Planet.all.each.with_index(1) do |planet, index|
      puts "#{index} - #{planet.name}"
    end
  end 
    
  def planet_details 
    list_planets
    puts "Please type the number of your planet:"
    input = gets.strip.to_i
    if (1..11).include?(input)
      planet = Planet.all[input-1]
      Scraper.scrape_planet_deets(planet) if planet.details == nil
      print_planet_details(planet)
    else 
      puts "Please enter a valid selection!".red
    end 
  end 
    
  def print_planet_details(planet)
    puts "Planet Details:
      #{planet.details}".green
  end 
      
  def sub_menu
    input = nil 
      puts " "
      puts  "Enter your selection:"
      puts  "1.To learn about the Planet that rules your life, enter '1'"  
      puts  "2.To go back to the Main Menu, enter '2'"
      puts  "3.To Exit, enter '3'"
      puts " "
        
      input = gets.strip.to_i
        if input == 1 
          planet_details 
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

