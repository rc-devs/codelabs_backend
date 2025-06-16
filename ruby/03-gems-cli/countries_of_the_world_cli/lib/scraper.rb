require "nokogiri"
require "httparty"

module Scraper
  INDEX_URL = "https://www.scrapethissite.com/pages/simple/"
  
  def self.scrape_countries
    unparsed_page = HTTParty.get(INDEX_URL) #get request
    parsed_page = Nokogiri::HTML(unparsed_page.body)
    countries = parsed_page.css("div.country")
    puts countries

    countries.each do |country|
      name = country.css("country-name").text
      capital =  country.css("country-capital").text
      population = country.css("country-population").text
      area =  country.css("country-area").text
      
      puts "#{name} #{capital} #{population} #{area}"
    end
  end
end