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

### PRACTICE EXERCISES ###

### classes and objects
#Create a Ruby program that performs the following tasks using classes and objects:
  #Define a class called 'Car' that takes a make and model as arguments.
  #Define a method called 'print_color' that prints the color of the car.
  #Create an instance of the 'Car' class called 'car'.
  #Create a test for the 'Car' class that tests the 'print_color' method.

class Car
  def initialize(make_2, model_2, color)
    @make_2 = make_2
    @model_2 = model_2
    @color = color
  end

  def print_color
    print @color
  end
end

car = Car.new("Honda", "Accord", "Blue")

car.print_color

## needs test











### iheritance ###
#Create a Ruby program that performs the following tasks using inheritance:
  #Define a class called 'Fruit' that takes a name as an argument.
  #Define a method called 'print_name' that prints the name of the fruit.
  #Define a class called 'Apple' that inherits from the 'Fruit' class.
  #Create an instance of the 'Apple' class called 'apple'.
  #Create a test for the 'Apple' class that tests the 'print_name' method



#### enhance car management system ### 
#In this exercise, you will create a more complex Ruby program involving the Car class. This program will not only handle car properties but also include a collection of cars and perform various operations using built-in array methods.

#Define a Car class:
  #The class should initialize with a make, model, and color. Include methods to get and set each of these attributes.
  #Add a method info that returns a string with all the car's details.

#Create a Garage class:
  #This class will manage a collection of Car objects.
  #Implement methods to add a car, remove a car by make and model, and list all cars.
  #Add a method to find all cars of a specific color.
  #add a method to clear all cars from the garage.

#Write tests for both classes:
  #Test all the functionalities of the Car and Garage classes.