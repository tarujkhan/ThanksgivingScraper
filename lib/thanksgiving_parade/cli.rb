require 'pry'
require_relative '../thanksgivingparade.rb'
require_relative './scraper.rb'
require_relative './thanksgiving.rb'

class ThanksgivingParade::CLI
  def call
    @parade = ThanksgivingParade::Scraper.new.make_parade
    puts 'Welcome to the Thanksgiving Parade in New York City!!!!.
    Here are a list of tabs you can choose from to get more information about the parade:
    Preparade fun, Parade route, Watch in person, Lineup, Celebrity sightings, New balloons, General tips, Watch on tv'
    start
  end

  def start
    puts ''
    puts 'What tab number would you like to see? 1,2,3,4,5,6,7?'
    input = gets.strip.to_i

    if input <= 0 || input > 7
      puts 'Invalid input. Please start over'
      call
    else
      thanksgiving = ThanksgivingParade::Thanksgiving.find(input)
      puts '-' * 20
      puts ThanksgivingParade::Thanksgiving.titles[input - 1].text
      puts thanksgiving.text.strip
      puts '-' * 20
      puts ''
      puts 'Would you like to see another tab? Please enter Y or N'
      input = gets.strip.downcase
      if input == 'y'
        start
      elsif input == 'n'
        puts ''
        puts 'Thank you! Have fun at the Parade!'
        exit
      end
  end
  end
end
parade1 = ThanksgivingParade::CLI.new
parade1.call
