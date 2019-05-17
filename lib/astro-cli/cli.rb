class CLI  
 
  def run 
    input = ""
    puts "Hello There! Welcome to your Astrology Source!".blue
    Scraper.scrape_signs_and_planets
    
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
      puts "See ya later!"
      exit 
      
    elsif input == 1
        astro_signs
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
      input = " "
      puts "Please type the name of your sign:"
      Sign.all.each_with_index(1) do |index, sign|
          puts "#{index}. #{sign}"
        end
      input = gets.strip
      sign = input 
      Sign.scrape_traits(sign) 
      submenu
    end 
 
    
    def astro_signs
    Sign.all.each do |name|
      puts "#{name.name} - #{name.dates}"           #need dates from sign traits scraper 
    end 
  end 
   
    def astro_planets
      input = ""
      Sign.all.each_with_index(1) do |index, sign|
          puts "#{index}. #{sign}"
      puts "Enter the name of your sign:"
      input = gets.strip
      name = input 
      Sign.find_by_name(name)
     
    end 
end 

