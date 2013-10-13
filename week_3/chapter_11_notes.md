#Chapter 11
##Exceptions, Catch, and Throw 


###Summary

* <b>Exceptions, Catches and Throws are used to handle situations where the code breaks</b>

<b> Standard Layout Example </b>
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





###Tips and Tricks
* stub <http://quizlet.com/_ginwc>



###Questions
* Stub


-------
#####Meeka & Tyler
