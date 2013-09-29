#Ruby.new

begins to develop an overarching explaination of Ruby from the top down, but realizes it needs to desribe certain concepts in order to accomplish this.

###Ruby is an Object Oriented Language

	-Everything in ruby is an object
		+when you manipulate and object, the result of that manipulation IS AN OBJECT :)

	-what this means is that programming in Ruby is like modeling concepts from the real world
		+The example the book provides is the /"song/" concept

	-Class is a combination of state and methods an object can belong to.
		+The state provides characteristics (such as the name of the song)
		+The methods manipulate the states (such as being able to play the song)
		
	-You create new instances of the an object with the attributes and abilities of the class by calling the Class.new command
		+the '.new' called on the Class is a *contructor* 
		+there are other constructors that will be discussed later
		+e.g. 	song1 = Song.new("Ruby Tuesday") 
				song2 = Song.new("Enveloped in Python")
		+These two instances, while being of the same class, can have different, unique characterisitcs (and hold different object IDs)

	-an *instance method* can be created within the context of the class but can be called upon from outside the class


### Some Basic Ruby

	-Ruby syntax is clean 
		+meaning you don't need to add marking to the beginning or end of statements as long as you put each statement on a separate line.
		+comments start with a # and wont render the rest of the line into code
		+indentation has no effect on the code, the 2 spaces indent is standard practice for readability however
		+parenthasis are optional, again, sometimes they are added for readability

	-Strings 
		+single quotes '' can hold string text, but no modifying code within the quotes
		+double quotes "" can have string, substitutions, and interpolations (designated by a #{interpolation here})

	-The last expression within a method is returned

	-Naming
		+local variables, method parameters, and method names all start with a lowercase letter
		+Global variables start with a $ (***JEFF SAYS DON'T USE THESE!***)
		+instance variables begin with @
		+Class variables start with @@ 
		+Class names, module names, and constants must start with an uppercase letter
		+after the first character, a name can have any combination of letters, numbers and underscores. (except a number may not follow an @ though)
		+method names may end with ?, !, and =
		






###Random Code Learned
	.abs is a method called on a number value which returns the absolute value

	/n calls for a new line. e.g puts "Hello /nWorld" Produces
		Hello
		World
	
=======
##### -George		

####Additional Notes

	+Local Variables start with lowercase letters or _
	+Instance Variables start with @
	+Global Variables start with $
	+Class Variables start with @@
	+Class Name starts with a capital letter
	+Constant Names are in all caps

	+Arrays and Hashes are indexed collections
	+"[An array is a] more efficient to access array elements, but hashes provide more flexibility"
	
#####See the chapter 2 code examples for further experimentation!

##### -Meeka

