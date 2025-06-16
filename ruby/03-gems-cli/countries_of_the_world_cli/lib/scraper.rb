require "nokogiri"
require "httparty"

module Scraper
  INDEX_URL = "https://www.scrapethissite.com/pages/simple/"
  
  def self.scrape_countries
    unparsed_page = HTTParty.get(INDEX_URL) #get request
    parsed_page = Nokogiri::HTML(unparsed_page.body)
    puts parsed_page
  end
end