require "nokogiri"
require "open-uri"
require "json"

class API_FAA
  BASE_URL = "https://nasstatus.faa.gov/api/airport-status-information"

  def self.get_airspace_status
    doc = Nokogiri::HTML(URI.open(BASE_URL)) #send requrest to base url
    scraped_statuses = (doc.text) #recieve response as string
    puts scraped_statuses #whole string

  #need to find a good point to split or gsub; response is not uniform enough to easily do so
    #split_statuses = scraped_statuses.split #split scraped_status
    #puts split_statuses #split string
  end
  # if successfully split, could iterate over and dynamically display the airport location, event, etc
    #scraped_statuses.each do |status|
    #  puts "| #{status['airport']}  "
    #end

end