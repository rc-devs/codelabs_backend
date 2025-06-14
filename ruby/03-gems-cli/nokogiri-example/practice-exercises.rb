require "nokogiri"
require "httparty"

index_doc = Nokogiri::HTML(File.open("index.html"))

index_doc.css("li").each {|li| puts li.text}

class API 
  def self.get_films_by_year(year)
    url = "https://en.wikipedia.org/wiki/#{year}_in_film" #url for scrape, string interpolate year for dynamic scrape
    unparsed_page = HTTParty.get(url) #get request page (url variable arg)
    parsed_page = Nokogiri::HTML(unparsed_page.body) #get url and access html body element content

    #extract the element as nokogiri instances
    #table.wikitable.sortable is the element from the html page (table element class)
    #tr td are the html elements table row and table detail; we are digging in to the layers of the html
    films = parsed_page.css("table.wikitable.sortable tr td:nth-child(2) i a").map {|film| film.text.strip} #iterate over with map
    films.each_with_index do |film, index|
     puts "#{index + 1}. #{film}" # iterate over and print the index number(+1) and film name
    end
  end
end

API.get_films_by_year(2019)