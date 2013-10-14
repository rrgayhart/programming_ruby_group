#s;Chapter 11: Basic Input and Output


###IO Object's
	IO is a *base class*
		subclassed by File and BasicSocket
acts as a channel between the Ruby program and an external resource.
don't worry about that. just write to it and read from it. ***LET IT DO WHAT IT DOES***

###Opening and Closing Files
	create a new file using the File.new("param1", "param2") command
		parameter 1 is the file name
		parameter 2 says what you want to do with it
			-"r" means read only
			-"w" means write only
			-"r+" means read and write
		File.close to close

	File.open works similarly
		-except passes the file as a parameter when a block is invoked
		-also, closes automatically when the block exits

###Reading and Writing Files
	same methods are available from other I/O
		-e.g. file.gets reads a line from the file
#####Iterators for Reading
	each_byte (chunks into 8 bit bytes), each_line, foreach
	***I/O never certain. Be ready to rescue as exceptions on errors occur***
#####Writing to Files
	standard stuff for the most part
		<< auto converts to string, file, array (whatever format it is << to)
#####String I/O Objects
	function like other I/O just read and write stings

###Talking to Networks
Ruby has classes ready to utilize TCP, UDP, SOCKS, and Unix domain sockets.
(low level)
In the lib/net, RUBY has modules for application level protocols
	(FTP, HTTP, POP, SMTP, and telnet)
open-air library allows for higher levels (http:// , ftp:// , and URLs)

###Parsing HTML
***book says fuckit, just use the Nokogiri library gem***

###Questions?
	chr method converts integers to corresponding ASCII characters?
	Binary to string? .pack? example seems poor in book 
	What are SOCKETS?

