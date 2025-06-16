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
  end
end