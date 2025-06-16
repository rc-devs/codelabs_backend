require "nokogiri"
require "open-uri"
require "json"

class API
  BASE_URL = "https://www.scrapethissite.com/pages/ajax-javascript/?ajax=true&year="
  def self.find_films_by_year(year)
    doc = Nokogiri::HTML(URI.open(BASE_URL + year))
    scraped_movies = JSON.parse(doc.text)
    puts scraped_movies
  end
end