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
