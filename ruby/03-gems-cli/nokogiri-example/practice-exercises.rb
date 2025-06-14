require "nokogiri"
require "httparty"

index_doc = Nokogiri::HTML(File.open("index.html"))

index_doc.css("li").each {|li| puts li.text}

class API 
  def self get_films_by_year(year)
    url = "https://en.wikipedia.org/wiki/#{year}_in_film" #url for scrape, string interpolate year for dynamic scrape
    unparsed_page = HTTParty.get(url) #get request page (url variable arg)
  end
end