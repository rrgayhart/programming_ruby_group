#Chapter 11
##Exceptions, Catch, and Throw 


###Summary

* <b>Exceptions, Catches and Throws are used to handle situations where the code breaks</b>

<b> Example of Rescuing and Ensuring </b>
```ruby
f = File.open("testfile") 
begin 
	#..process 
rescue 
	#..handleerror 
ensure 
	f.close 
end
```
* A file is opened
* Begin block is opened and the code for processing the file is placed here
* Rescue gives the desired behavior in the case of an error
* Ensure makes sure that the code it handles is executed before the block is terminated. 
	 In this case, no matter what happens with the file, this code ensures that the file will then be closed
	 <p> </p>
	 
<b> Example of Catch and Throw </b>
```ruby
word_list = File.open("wordlist") 
catch (:done) do
	result=[]
	while line = word_list.gets 
		word = line.chomp 
		throw :done unless word =~ /^\w+$/ 
		result << word 
	end 
	puts result.reverse 
end
if word_in_error
	puts "Failed: '#{word_in_error}' found, but a word was expected" 
end
```
* A file is opened
* Catch defines a block that is labeled with a given name
* The block is executed normally until throw is encountered
* Once throw is encountered, ruby unwinds the stack to that point and terminates the block




###Tips and Tricks
* The Ruby Monk Section and Code Play for Catch and Throw 
<http://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/41-exceptions/lessons/93-throw-and-catch>
* The Ruby Learning Blog post on Catch and Throw
<http://rubylearning.com/blog/2011/07/12/throw-catch-raise-rescue-im-so-confused/>



###Questions
* Stub


-------
#####Meeka & Tyler
