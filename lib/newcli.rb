class CLI 

def call 
    Scraper.new.make_parade
    puts "Welcome to the Macy's Thanksgiving Parade in New York City!"
    start 
end 

def start 
    puts ""
    puts "Which tab would you like to see?"
    input = gets.strip.to_i

    print_parade_info(input)

    puts ""
    puts "Which tab would you like more information on?"
    input = gets.strip

    parade = ThanksgivingParadeInfo.find(input.to_i)

    print_parade(print_parade)

    puts ""
    puts "Would you like to see another tab? Please enter Y or N"

    input = gets.strip.downcase
    if input == "y"
        start 
    elsif input == "n"
        puts ""
        puts "Thank you for looking! Have a nice day"
        exit 
    else 
        puts ""
        puts "I do not understand your choice"
        start 
    end 
end 

def print_parade_info(parade)
    
    puts "#{parade.list_tabs}" - "#{parade.menu}"
    
    puts "Route: #{parade.parade_route}"
    puts "Lineup Info: #{parade.lineup}"

    
    puts "Hollywood Fun"
    puts "#{parade.celebrity_sightings}"
    
    
    puts "Fun things to do"
    puts "#{parade.new_balloons}"
    puts "#{parade.pre_parade_fun}"

    
    puts "Where to watch"
    puts "Watch in person: #{parade.watch_in_person}"
    puts "Watch on TV: #{parade.watch_on_tv}"

    
    puts "How to have fun"
    puts "General tips: #{parade.general_tips}"
end 

def print_parade_tab_info(from_number)
    
    puts "Parade info #{from_number} - #{from_number+8}"
    
    ThanksgivingParadeInfo.all[from_number-1,9].each_with_index(from_number) do |parade, index|
        puts "#{index}. #{parade.name} - #{parade.parade_route}"
    end 
end 
end 
