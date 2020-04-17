require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative '../thanksgivingparade.rb'
require_relative './thanksgiving.rb'

class ThanksgivingParade::Scraper
  @@url = 'https://www.playbill.com/article/playbills-guide-to-the-2019-macys-thanksgiving-day-parade'

  def get_page
    Nokogiri::HTML(open(@@url))
  end

  def scrape_parade_index
    get_page
  end

  def make_parade
    p = scrape_parade_index
    ThanksgivingParade::Thanksgiving.new_from_index_page(p, @@url)
  end
end
