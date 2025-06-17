require_relative './scraper.rb'

class CLI_NAS_Status 
  def greet
    puts "Hello. Would you like me to submit a request for some of the most recent Airport Events from the FAA National Airspace System Status?"
    input = gets.strip
    if input.downcase == "yes" || "y"
      self.submit_request
    else 
       puts "No request submitted."
    end
  end

  def submit_request 
      API_FAA.get_airspace_status
  end
end