require 'pry'
class Scraper 
  THANKSGIVING_URL = "https://www.macys.com/social/parade/"
  
  def self.scrape_thanksgiving
    html = open(THANKSGIVING_URL)
    doc = NOkogirl::HTML(html)
    doc.css().css().each do |event|
    tab =
    url = 
    Thanksgiving.New(tab, url)
    binding.pry
    #open URL 
    #use nokogiri to parse the URL 
    #loop through each of the elements and get information of the tabs and url 
    #create new objects with the information and url for each tab
    
end 

def self.scrape_individual_tab(tab)
  html = open(THANKSGIVING_URL+tab.url)
  doc = Nokogiri::HTML(html)
  thanksgiving.paraderoute = css.
  thanksgiving.lineupinfo = css.
  thanksgiving.news = css.
  thanksgiving.paradeshop = css.
  thanksgiving.macysparade = css.
  thanksgiving.onlyonnbc = css.
  thanksgiving.verizonlive = css.
  thanksgiving.faqs = css.
end 