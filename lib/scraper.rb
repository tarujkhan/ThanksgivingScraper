# require 'pry'


# class Scraper
# PARADE_URL = "https://www.playbill.com/article/playbills-guide-to-the-2019-macys-thanksgiving-day-parade"
#   def self.scrape_thanksgiving
#     html = open(PARADE_URL)
#     # open our url
#     doc = Nokogiri::HTML(html)
#     # use nokogiri to parse our url
#     doc.css("u").css("b").each do |parade|
#       binding.pry 
#       info = parade.text
#       Thanksgiving.new(info)
#     end
#     # loop through each of our elements and pull out the title and the url
#     # create a new movie object with the title and the url for each movie
#   end
#     #open URL 
    
#     #use nokogiri to parse the URL 
#     #loop through each of the elements and get information of the tabs and url 
#     #create new objects with the information and url for each tab
    
# end 

#   def self.scrape_individual_tab(tab)
#     html = open(PARADE_URL+parade.url)
#     doc = Nokogiri::HTML(html)
#     thanksgiving.preparadefun = css.("div.bsp-article-content").css("ul")[0].text.strip
#     thanksgiving.paraderoute = css("div.bsp-article-content").css("ul")[1].text.strip
#     thanksgiving.watchinperson = css("div.bsp-article-content").css("ul")[2].text.strip
#     thanksgiving.lineupinfo = css("div.bsp-article-content").css("ul")[3].text.strip
#     thanksgiving.celebritysightings = css("div.bsp-article-content").css("ul")[4].text.strip
#     thanksgiving.newballoons = css("div.bsp-article-content").css("ul")[5].text.strip
#     thanksgiving.generaltips =css("div.bsp-article-content").css("ul")[6].text.strip
#     thanksgiving.watchontv = doc.css("div.bsp-article-content").css("ul")[7].text.strip
#   end 





class Scraper 

  def get_page
    Nokogiri::HTML(open(https://www.playbill.com/article/playbills-guide-to-the-2019-macys-thanksgiving-day-parade))
  end 

  def scrape_parade_index
    self.get_page("heading-three bsp-article-subtitle")
  end 

  def make_parade 
    scrape_parade_index.each do |p|
      ThanksgivingParadeInfo.new_from_index(p)
    end 
  end 
end

      