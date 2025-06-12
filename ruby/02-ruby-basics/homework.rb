## reading example
#class creation
class Book
  def initialize(title, author, pages)
    @title = title
    @author = author
    @pages = pages
  end

  def print_title
    puts @title
  end

  def print_author
    puts @author
  end

  def print_pages
    puts @pages
  end
end

## object (use of class)
my_book = Book.new("The Pragmatic Programmer", "Andy Hunt and Dave Thomas", 352) #initializes instance
my_book.print_author
my_book.print_title
my_book.print_pages


### 01 practice problem ###
# Create a Ruby program that performs the following tasks using classes and objects:

# Define a class called 'Animal' that takes a name as an argument.
# Define a method called 'speak' that prints the name of the animal.
# Create an instance of the Animal class called 'dog'.
# Call the 'speak' method on the 'dog' instance.
class Animal
  def initialize(name)
    @name = name
  end
  def speak
    print @name
    puts "\n"
  end
end

dog = Animal.new("dog") #new instance
dog.speak #call instance methods


### 02 practice problem ###
#Define a class called 'Cat' that inherits from the 'Animal' class.
#Create an instance of the 'Cat' class called 'cat'.
#Call the 'speak' method on the 'cat' instance.
class Cat < Animal
  def initialize(name, sound)
    super (name)
    @sound = sound
  end
  def print_sound
    print @sound
    puts "\n"
  end
end

class Dog < Cat
  def initialize(name, sound)
    super(name, sound)
  end
end

cat = Cat.new("cat", "meow")
new_dog = Dog.new("dog", "bark")

cat.speak
cat.print_sound
new_dog.speak
new_dog.print_sound

### 03 practice problem ###
#Create a Ruby program that performs the following tasks using encapsulation and access modifiers that includes public and private methods:

#Define a class called Vehicle that takes a make and model as arguments.
#Define a method called print_make that prints the make of the car.
#Define a method called print_model that prints the model of the car.
#Define a method called print_details that prints the make and model of the car.
#Define a class called Car that inherits from the Vehicle class.
#Define a method called print_details that prints the make, model, and year of the car.
#Define a class called Motorcycle that inherits from the Vehicle class.

class Vehicle
  def initialize(make, model)
    @make = make
    @model = model
  end

  def print_make
    print @make
    puts "\n"
  end

  def print_model
    print @model
    puts "\n"
  end

  def print_details
    print_make()
    puts "\n"
    print_model() 
    puts "\n"
  end
end

class Car < Vehicle
  def initialize(make, model, year)
    super(make, model)
    @year = year
  end
  
  def print_details
    print_make()
       puts "\n"
    print_model()
       puts "\n"
    print @year
      puts "\n"
  end
end

class Motorcycle < Vehicle
end

saturn = Vehicle.new("Saturn", "SL2")
honda = Vehicle.new("Honda", "Accord")
toyota = Car.new("Toyota", "Corolla", 2010) #don't forget proper number of arguments!
honda_motorcycle = Motorcycle.new("Honda", "NT1100")

saturn.print_details
saturn.print_make
saturn.print_model

honda.print_details
honda.print_make
honda.print_model

toyota.print_details

honda_motorcycle.print_details
