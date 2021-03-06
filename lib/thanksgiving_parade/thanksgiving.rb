require 'pry'
require_relative '../thanksgivingparade.rb'

class ThanksgivingParade::Thanksgiving
  attr_accessor :festival, :url, :pre_parade_fun, :parade_route, :watch_in_person, :lineup, :celebrity_sightings, :new_balloons, :general_tips, :watch_on_tv
  @@all = []
  @@tabs = []

  def self.new_from_index_page(r, url)
    new(
      r.css('.heading-one.bsp-article-title').text,
      url,
      r
    )
  end

  def initialize(festival, url, doc)
    @festival = festival
    @url = url
    @doc = doc
    @@all = doc.css('div.bsp-article-content').css('ul')
    @@tabs = doc.css('u > b[data-rte2-sanitize="bold"]')
  end

  def self.titles
    @@tabsn
  end

  def self.all
    @@all
  end

  def self.find(id)
    @@all[id - 1]
  end

  def pre_parade_fun
    @pre_parade_fun ||= doc.css('div.bsp-article-content').css('ul')[0].text.strip
  end

  def parade_route
    @parade_route ||= doc.css('div.bsp-article-content').css('ul')[1].text.strip
  end

  def watch_in_person
    @watch_in_person ||= doc.css('div.bsp-article-content').css('ul')[2].text.strip
  end

  def lineup
    @lineup ||= doc.css('div.bsp-article-content').css('ul')[3].text.strip
  end

  def celebrity_sightings
    @celebrity_sightings ||= doc.css('div.bsp-article-content').css('ul')[4].text.strip
  end

  def new_balloons
    @new_balloons ||= doc.css('div.bsp-article-content').css('ul')[5].text.strip
  end

  def general_tips
    @general_tips ||= doc.css('div.bsp-article-content').css('ul')[6].text.strip
  end

  def watch_on_tv
    @watch_on_tv ||= doc.css('div.bsp-article-content').css('ul')[7].text.strip
  end

  def doc
    @doc ||= Nokogiri::HTML(open(url))
  end
end
