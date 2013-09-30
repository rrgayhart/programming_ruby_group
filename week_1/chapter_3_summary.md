#Classes, Objects and Variables

###Classes
  - Identify things you're dealing with. Each type of thing becomes a class in your program and the individual things themselves are instances of these classes. 
  - Class names are always uppercase while method and variable names are lower case.
  -Initialize method: allows us to set the state of each object when it is constructed. Store state in instance variables.
  - Instance variables: available to all the instance methods of an object in a class

  -Every *object* in ruby is generated either directly or indirectly from a *class*.
  -when you create a class, you choose what states it has internally and those states appear outside the class to objects using that class. 
   +the internal state is held through the use of *instance* *variables*. 
   +the external state is shown through the methods called *attributes*.
   +the other things your class performs are just REGULAR methods.


###Objects and Attributes
- attr_reader :variable 

is equivalent to

```ruby
def variable
  @variable
end
```

*Allows you to call instance variable as a method which returns the value of the instance variable (as it is the last thing evaluated in the method is just the variable itself). attr_reader is just a shortcut.*

- attr_writer :variable

is equivalent to

```ruby
def variable=(new_parameter)
  @variable = new_parameter
end
```

*Basically allows you to set the value of an attribute of an object from the object's state.*

**attr_accessor combines attr_reader and attr_writer in one.**

- attributes of an object can be accessed just like any other variable.
  +show you are doing this by  creating a method ending with an equals sign 
  +these methods can then be used as the target for assignments
  +can appear on the LEFT side of an assignment


###Classes Working with other classes
  - CSV reader stores data from CSV in an **array** of values 
  - When working with CSV files, basic setup is as follows:
  "We’re going to organize our source into three files. The first, book_in_stock.rb, will contain the definition of the class BookInStock. The second, csv_reader.rb, is the source for the CsvReader class. Finally, a third file, stock_stats.rb, is the main driver program."


###Access Control
  1. Public Methods: can be called by anyone (initialize excluded)
  2. Protected Methods: can be called by objects within same class
  3. Private Methods: called only by current object/self


###Variables
  - Not objects themselves, but hold references to objects 
  - Variables are mutable 
  - You can freeze an object in order to not allow changes to it using the .freeze method 
  *you cannot modify an object that is frozen. It will return a RuntimeError.*


###Random Code Learned
  - Integer(5.0-5.9) returns 5 
  Integer(6.0-6.9) returns 6, etc. 
  - require_relatve 'filename' - location of file you're loading is in the same directory 

  -the *Float* method takes its integer argument and attempts to convert is to a floating point number (using some of the memory to make a decimal instead of an integer) I don't know why it is always capitalized.

  ***Whenever designing Object Oriented systems, a good first step is to identify the *things* you are dealing with.***
