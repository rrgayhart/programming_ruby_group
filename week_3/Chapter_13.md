#Chapter 13: Unit Testing

###Introduction
* "...all software is constructed in layers; code on one layer relies on the correct operation of the code in the layers below. If this underlying code turns out to contain bugs, then all higher layers are potentially affected" (198)
* Unit testing helps developers write better code because thinking about testing naturally leads you to think about the accuracy of your code and reveals feedback
* Flexibility of Ruby makes unit testing easy... run some of your code, get back results and check actual versus expected

###Minitest::Unit versus Test::Unit
* various testing frameworks have emerged to structure the testing process... Nathaniel Talbott's Test::Unit for Ruby 1.8 and Ryan Davis' Minitest for Ruby 1.9
* differences between the two are minimal, but '''assert_not_raises''' and '''assert_noth_throws''' are absent... use refute_nil(x)and refute(x) instead

##Testing Framework
• It gives you a way of expressing individual tests.
• It provides a framework for structuring the tests.
• It gives you flexible ways of invoking the tests.

###Assertions == Expected Results
* Each assertion gives you a way of specifying a desired result or outcome and a way of passing in the actual outcome.
* If the actual doesn’t equal the expected, the assertion outputs a nice message and records the fact as a failure.
* For every positive assertion, such as ```assert_equal```, there’s a negative refutation (in this case refute_equal).

##Structuring Tests
* you gotta use ```require 'minitest/unit'```
* Within the test case, organize assertions into a number of test methods, where each method contains the assertions for one type of test; one method could check regular number conversions, another could test error handling, etc
* usually, with each test you will want to...
  create a new instance ... set up a database ... disconnect a database
  ... this can all be done in test setup 

###Organizing and Running Tests
* use meaningful names when organizing your data...
  Project 
   |__ lib/
   |      |_figuring_stuff_out.rb
   |__ test/
          |_test_figuring_stuff_out.rb
