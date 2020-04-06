class CLI 
  def call 
    Scraper.scrape_thanksgiving
    puts "Welcome to the 2020 Thanksgiving Parade in New York"
    puts "What would you like to know about the Parade?"
   
    list_tabs
    menu
end

def list_tabs
  Thanksgiving.each.with_index(1) do |tab, i|
    puts "#{i}, #{tab}"
end 

def menu 
   puts "Please choose from the following options:"
   input gets.chomp
  if !input.to_i.between(1, Thanksgiving.all.count)
    puts "Tab information not found. Please select a different number!"
    list_tabs
    menu 
  else 
    tab = Thanksgiving.all(input.to_i-1)
    display_tab_details(tab)
  end 
  puts "Would you like to see information about another tab"
  puts "Please enter Y or N"
  another_tab = gets.strip.downcase 
  if another_tab == "y" 
    list_tabs
  menu 
else 
  if another_tab == "n"
    puts "I hope you have fun at the Parade"
    exit
  else 
    puts "I did not understand. Please try again"
    list_tabs
    menu
  end 
end 

def display_tab_details(tab)
  Scraper.scrape_individual_tab(tab)
  puts "Here are the details for the #{thanksgiving.tab}"
  puts "Parade Route: #{thanksgiving.paraderoute}"
  puts "Lineup Info: #{thanksgiving.lineupinfo}"
  puts "News: #{thanksgiving.news}"
  puts "ParadeShop: #{thanksgiving.paradeshop}"
  puts "MacysParade: #{thanksgiving.macysparade}"
  puts "OnlyOnNBC: #{thanksgiving.onlyonnbc}"
  puts "VerizonLive: #{thanksgiving.verizonlive}"
  puts "Faqs: #{thanksgiving.faqs}"
  
    
end 
