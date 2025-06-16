require_relative "scraper.rb"

class CLI
  def start
    Scraper.scrape_countries
  end

  def get_input
    gets.strip
  end
end