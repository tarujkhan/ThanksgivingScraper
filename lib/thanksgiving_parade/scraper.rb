# # frozen_string_literal: true

require 'pry'
require 'nokogiri'
require 'open-uri'
require_relative '../thanksgivingparade.rb'
require_relative './thanksgiving.rb'

# class Scraper
#   PARADE_URL = 'https://www.playbill.com/article/playbills-guide-to-the-2019-macys-thanksgiving-day-parade'
#   def self.scrape_thanksgiving
#     html = open(PARADE_URL)
#     doc = Nokogiri::HTML(html)
#     doc.css('u').css('b').each do |parade|
#       binding.pry
#       info = parade.text
#       ThanksgivingParadeInfo.new(info)
#     end
#   end


#   def get_page(_page)
#     Nokogiri::HTML(open('https://www.playbill.com/article/playbills-guide-to-the-2019-macys-thanksgiving-day-parade'))
#   end

#   def scrape_parade_index
#     get_page('heading-three bsp-article-subtitle')
#   end

#   def self.scrape_individual_tab(_tab)
#     html = open(PARADE_URL + parade.url)
#     doc = Nokogiri::HTML(html)
#     thanksgiving.preparadefun = css.call('div.bsp-article-content').css('ul')[0].text.strip
#     thanksgiving.paraderoute = css('div.bsp-article-content').css('ul')[1].text.strip
#     thanksgiving.watchinperson = css('div.bsp-article-content').css('ul')[2].text.strip
#     thanksgiving.lineupinfo = css('div.bsp-article-content').css('ul')[3].text.strip
#     thanksgiving.celebritysightings = css('div.bsp-article-content').css('ul')[4].text.strip
#     thanksgiving.newballoons = css('div.bsp-article-content').css('ul')[5].text.strip
#     thanksgiving.generaltips = css('div.bsp-article-content').css('ul')[6].text.strip
#     thanksgiving.watchontv = doc.css('div.bsp-article-content').css('ul')[7].text.strip
#   end
# end
class ThanksgivingParade::Scraper
  @@url = 'https://www.playbill.com/article/playbills-guide-to-the-2019-macys-thanksgiving-day-parade'

  def get_page
    Nokogiri::HTML(open(@@url))
  end

  def scrape_parade_index
   # self.get_page("heading-three bsp-article-subtitle")
   get_page
  end

  def make_parade
    p = scrape_parade_index
    ThanksgivingParade::Thanksgiving.new_from_index_page(p, @@url)
  end
end 