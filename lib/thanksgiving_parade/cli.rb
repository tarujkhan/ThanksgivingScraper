

require 'pry'
require_relative '../thanksgivingparade.rb'
require_relative './scraper.rb'
require_relative './thanksgiving.rb'

class ThanksgivingParade::CLI
  
  def call
    ThanksgivingParade::Scraper.new.make_parade
    puts "Welcome to the Thanksgiving Parade in New York"
    start
  end

  def start
    puts ""
    puts "What tab number would you like to see? 1,2,3,4,5,6,7,8?"
    input = gets.strip.to_i

    print_tabs(input)

    puts ""
    puts "What tab would you like more information on?"
    input = gets.strip

    thanksgiving = ThanksgivingParade::Thanksgiving.find(input.to_i)

    print parade_info(parade)

    puts ""
    puts "Would you like to see another tab? Enter Y or N"

    input = gets.strip.downcase
    if input == "y"
      start
    elsif input == "n"
      puts ""
      puts "Thank you! Have a great day!"
      exit
    else
      puts ""
      puts "I don't understand that answer."
      start
    end
  end

  def print_parade_info(parade)
        puts ""
        puts "Route: #{parade.parade_route}"
        puts "Lineup Info: #{parade.lineup}"

        puts ""
        puts 'Hollywood Fun'
        puts parade.celebrity_sightings.to_s

        puts ""
        puts 'Fun things to do'
        puts parade.new_balloons.to_s
        puts parade.pre_parade_fun.to_s

        puts ""
        puts 'Where to watch'
        puts "Watch in person: #{parade.watch_in_person}"
        puts "Watch on TV: #{parade.watch_on_tv}"

        puts ""
        puts 'How to have fun'
        puts "General tips: #{parade.general_tips}"
      end
        
    def print_tabs(from_number)
      puts ""
      puts "---------- Tabs #{from_number} - #{from_number+9} ----------"
      puts ""
      ThanksgivingParade::Thanksgiving.all[from_number-1, 8].each.with_index(from_number) do |tabname, index|
        puts "#{index}. #{tabname.festival}"
      end
    end
  
  end

  parade1 = ThanksgivingParade::CLI.new
  parade1.call