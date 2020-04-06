class Thanksgiving
  
  attr_accessor :tab, :url, :lineupinfo, :news, :paradeshop, :macysparade, :onlyonnbc, :verizonlive, :faqs
  @@all = []
  
  def initialize(tab, url)
    @tab = tab
    @url = url 
    @@all << self 
end 

def self.all
  @@all 
end 
end 


