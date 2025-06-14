require "nokogiri"
require "httparty"

index_doc = Nokogiri::HTML(File.open("index.html"))

index_doc.css("li").each {|li| puts li.text}

class API 
  def initialize(year)
    @year
  end

  def self get_films_by_year(year)
    @year
  end
end