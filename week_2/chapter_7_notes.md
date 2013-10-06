#Chapter 7
##Regular Expressions 


###Summary

* <b>An Overview of what Regular Expressions</b>
	- Regular Expressions are used to match patterns against strings. Theyare difficult to undertand at first and Thomas recommends coming back to this chapter later.
* <b>How Regular Expressions are used in Ruby</B>
	- Most common is to write a basic pattern between forward classes
		- for example: /cat/ to find "cat" 
	- Stings can be changed based on a pattern with the sub method
* <b>Digging Deeper</b>
	- You can create regular expression objects by calling Regexp class's new method or by using %r{…} syntax
* <b>Advanced Regular Expressions</b>


###Tips and Tricks
* A link to flashcards based on the chapter: <http://quizlet.com/_ginwc>
* The Ruby operator =~ matches a string against a pattern
	- It returns the character offset into the string where the match occurred
	- /cat/ =~ "cat" will return 0
	- /cat/ =~ "and cat" will return 4
* The Ruby operator !~ is used to test non-matching
* In order to match a special character literally in a pattern, precede it with a backslash
	- for example: /\*/ looks for the asterisk

* <http://rubular.com/> - is an excellent way to play with regex patters
* <http://regexcrossword.com/> - a fun regex game shared by Katrina!



###Questions
* How often are REGEX patterns actually used? I've heard that they are often omitted due to being difficult to read. What is the standard use?


-------
#####Persa & Meeka
