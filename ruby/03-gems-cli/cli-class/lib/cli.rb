require_relative ".api.rb"

class CLI 
  def run
    system('clear')
    greet
    while menu != 'exit'
    end
    goodbye
  end

  def greet
    puts "Welcom to the Oscar Winning Films CLI"
  end

  def goodbye 
    puts "Goodbye!"
  end

  def menu
    puts "\n Please enter a year to see the Oscar winning films for that year \n\n"

    input_year = gets.chomp

    find_films_by_year(input_year) unless input_year == 'exit'

    input_year #return?
  end

  def find_films_by_year(year)
    puts "\n Let me find the Oscar winning films for #{year} \n\n"
  end
end