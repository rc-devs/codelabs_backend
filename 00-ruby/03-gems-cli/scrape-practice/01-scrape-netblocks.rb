require "nokogiri"
require "httparty"

class ScrapeNetBlocksAPI
  def self.get_reports
    url = "https://netblocks.org/reports"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page.body)

    reports = parsed_page.css("article.report h3 a") 
    
    reports.each_with_index do |report, index|
      title = report.text.strip
      link = report ['href']
      puts "#{index + 1}. #{title} - https://netblocks.org#{link}" 
    end
    puts "\n"
  end
end

puts ScrapeNetBlocksAPI.get_reports
