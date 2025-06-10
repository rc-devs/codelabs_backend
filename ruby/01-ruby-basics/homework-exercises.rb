# practice problem 1 (escape sequences)
nameFirst = 'John'
nameLast = 'Doe'

puts "Hello #{nameFirst} #{nameLast}.\n I am learning the ruby code language."

# practice problem 2 (string interpolation)
my_name = 'John Doe'
PI = 3.14

puts "#{my_name} #{PI}"

# practice problem 3-1 (area calculation)
width = 10
height = 5
Area_calculation = width * height

puts Area_calculation

# practice problem 3-2 (combine string and number)
number = 10
newstring = 'I am stringy'

puts "#{newstring} #{number}"

# practic problem 4 (conditions)
number = 0
if number < 0
  puts "Negative"
elsif number > 0
  puts "Positive"
else number = 0
  puts "Zero"
end

# practice problem 5 (loops/conditions)
Number_collection = 1...21

Number_collection.each do |i|
  if (i % 3 == 0 && i % 5 == 0)
    puts 'Fizzbuzz'
  elsif (i % 3 == 0)
    puts 'Fizz'
  elsif (i % 5 == 0)
    puts 'Buzz'
  else
  puts i
  end
end

# practice problem 6(methods)
# 6-1 (convert string to integer)
my_data = '123'

my_data = my_data.to_i
puts my_data, my_data.class

#6-2 (convert integer to string)
my_data = my_data.to_s
puts my_data, my_data.class

#6-3 (convert string to float)
my_data_2 = '123.45'

my_data_2 = my_data_2.to_f
puts my_data_2, my_data_2.class

#6-4 (convert float to string)
my_data_2 = my_data_2.to_s

#6-5 (iterate over array)
Array_of_5 = [1, 2, 3, 4, 5]

  for i in Array_of_5 
    print i
  end
print "\n" # to separate following exercise

#6-6 (iterate over hash and print key-value pair)
user = {"name" => "Alice", "age" => 30}

puts user.values

# practice problem 7 (addition)
def add_two_numbers(a, b)
  return a + b
end

puts add_two_numbers(2,4)
puts add_two_numbers(4,10)
puts add_two_numbers(-30,51)
puts add_two_numbers(-543,72)
