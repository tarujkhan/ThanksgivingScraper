
require 'pry'

class CLI
  def call
    Scraper.scrape_thanksgiving
    puts 'Welcome to the Thanksgiving Parade in New York'
    puts 'What would you like to know about the Parade?'
    list_tabs(tab)
    menuoftabs(menu)
  end

  def list_tabs(tab)
    ThanksgivingParadeInfo.each.with_index(1) do |tab, i|
      puts "#{i}, #{tab}"
    end
  end

  def menuoftabs(menu)
    puts 'Please choose from the following options:'
    input gets.chomp
    if !input.to_i.between(1, ThanksgivingParadeInfo.all.count)
      puts 'Tab information not found. Please select a different number!'
      list_tabs(tab)
      menuoftabs(menu)
    else
      tab = ThanksgivingParadeInfo.all(input.to_i - 1)
      display_tab_details(tab)
    end
  end
  puts 'Would you like to see information about another tab?'
  puts 'Please enter Y or N'
  another_tab = gets.strip.downcase
  if another_tab == 'y'
    list_tabs(tab)
    menuoftabs(menu)
  else
    if another_tab == 'n'
      puts 'I hope you have fun at the Parade'
      exit
    else
      puts 'I did not understand. Please try again'
      list_tabs(tab)
      menuoftabs(menu)
    end
  end
end


def display_tab_details(tab)
  Scraper.scrape_individual_tab(tab)
  puts "Here are the details for the #{thanksgiving.pre_parade_fun}"
  puts "Parade Route: #{thanksgiving.parade_route}"
  puts "Paradeshop Info: #{thanksgiving.paradeshop}"
  puts "Watch In Person: #{thanksgiving.watch_in_person}"
  puts "Lineup: #{thanksgiving.lineup}"
  puts "Celebrity Sightings: #{thanksgiving.celebrity_sightings}"
  puts "New Balloons: #{thanksgiving.new_balloons}"
  puts "General Tips: #{thanksgiving.general_tips}"
  puts "Watch On T.V: #{thanksgiving.watch_on_tv}"
end
