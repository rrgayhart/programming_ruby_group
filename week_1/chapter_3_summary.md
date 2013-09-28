#Classes, Objects and Variables

###Classes
  - Identify things you're dealing with. Each type of thing becomes a class in your program and the individual things themselves are instances of these classes. 
  - Class names are always uppercase while method and variable names are lower case.
  -Initialize method: allows us to set the state of each object when it is constructed. Store state in instance variables.
  - Instance variables: available to all the instance methods of an object in a class


###Objects and Attributes
- attr_reader :variable 

is equivalent to

```ruby
def variable
  @variable
end
```

*Allows you to call instance variable as a method which returns the value of the instance variable (as it is the last thing evaluated in the method is just the variable itself). attr_reader is just a shortcut.*

- attr_accessor :variable

is equivalent to

```ruby
def variable=(new_parameter)
  @variable = new_parameter
end
```

*Basically allows you to set the value of an attribute of an object from the object's state.*


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


###Random Code Learned
  - Integer(5.0-5.9) returns 5 
  Integer(6.0-6.9) returns 6, etc. 
  - require_relatve 'filename' - location of file you're loading is in the same directory 
