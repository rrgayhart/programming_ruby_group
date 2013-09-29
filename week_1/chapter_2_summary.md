#Ruby.new

begins to develop an overarching explaination of Ruby from the top down, but realizes it needs to desribe certain concepts in order to accomplish this.

###Ruby is an Object Oriented Language

	-Everything in ruby is an object
		+when you manipulate an object, the result of that manipulation IS AN OBJECT :)

	-what this means is that programming in Ruby is like modeling concepts from the real world
		+The example the book provides is the /"song/" concept

	-Class is a combination of state and methods an object can belong to.
		+The state provides characteristics (such as the name of the song)
		+The methods manipulate the states (such as being able to play the song)
		
	-You create new instances of the an object with the attributes and abilities of the class by calling the Classname.new command
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
		

###Arrays and Hashes

	-Indexed Collections
		+store objects
		+accessed using a key (arrays use an integer key, hashes use another object as the key)
		+automatically grow to hold new elements

	-Arrays
		+an *array literal* is a set of elements between brackets with commas separating the elements
		+e.g. [ 1, 'teddy bear', 42 ]
		+integer keys range from 0 (the first object) on up. ( 0 would be the key for 1, and 2 is the key for 42 )
		+can also access from the last object ( -1 ) and count back from there ( -2 would be the key for 'teddy bear')

	-Hashes
		+similar to arrays
		+uses braces {} rather than brackets []
		+the *hash literal* must contain two objects for each entry representing the element key and value
		+rocket denotes what the key is 'unlocking'
		+e.g. key => value
		+each key must be unique (can't have one key unlocking two values)
		+values can be any object, including an array or another hash etc.
		+hash returns nil when indexed by a key it doesn't contain

###Symbols
	-guaranteed to be unique

	-always hold the same object ID

	-often used as keys within hashes (immutable so the keys for the values cannot be lost/changed so they do not function as desired)

	-shortcut for making hashes with symbols hash_name = {symbol_key: element_value, another_symbol: element_value}


###Control Structures
	-many different types (if, case, while statements etc.)

	-uses the keyword *end* to state the end of the body of control structure


###Regular Expressions
	-create the regular expression within slash characters /pattern/

	-specifies a *pattern* of characters
		+can also specify *repetition* within patterns
		+/ab+c/ matches a string with an a, then one or more b's, followed by a c
		+/ab*c/ matches a string with an a, zero or more b's, and one c

	-regular expressions ARE OBJECTS
		+thus, can be manipulated as objects

	-once you have the pattern, use the =~ to match a string against a regular expression
		+if the pattern is found, =~ returns its starting position
		+otherwise, nil
		+can use regular expressions as the condition in if and while statements
		+e.g. string = gets
			  if string =~ /thing_1|thing_2/
				puts "contains #{string}"
			  end

	-built into the Ruby language
		+not tacked on later through a library interface.
	
	-useful tool for working with text
	
	-discussed in more detail in chapter 7

	###Blocks and Iterators




###Random Code Learned
	.abs is a method called on a number value which returns the absolute value

	/n calls for a new line. e.g puts "Hello /nWorld" Produces
		Hello
		World

	nil IS AN OBJECT! it is just an object that happens to represent nothing

	shortcut for creating an array without quotes and commas
	a = %w{ stuff more_stuff even_more_stuff}
	a[0] = stuff
	a[2] = even_more_stuff

	pipe character means either the thing on the left or the thing on the right (thing_1 | thing_2)
		***equivalent to thing_(1 | 2)

	*character classes* match one group of characters within a pattern
		\s matches whitespace characters (spaces, tabs, newlines, etc)
		\d matches any digit
		\w matches characters appearing in typical words
		\. matches *almost* any character


	
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

