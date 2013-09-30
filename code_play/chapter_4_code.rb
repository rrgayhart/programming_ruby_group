class Arrays

  array_of_numbers = ['1', '3', '5', '7', '9']
  # indexing the array via a start,count
  array_of_numbers[3,1] # => "7"
  # indexing the array via a start,count
  array_of_numbers[1,3] # => "3, 5, 7"


  array_of_numbers = ['1', '3', '5', '7', '9']
  # adding values to an existing array
  array_of_numbers[5] = "11"
  array_of_numbers # => ['1', '3', '5', '7', '9', '11']

  array_of_numbers = ['1', '3', '5', '7', '9']
  # indexing the array via a range
  array_of_numbers[1..3] # => ['3','5','7']


  # showing various methods of creating an array
  # option 1
  array_of_numbers = ['1', '3', '5', '7', '9']
  # option 2
  array_of_numbers = %w{ 1 3 5 7 9 }


  # pushing adds an element at the the end of an existing array
  array = %w[ blue green ]
  array.push "red"
  array = ["blue", "green", "red"]

end


class Hashes

  # Here are two ways of creating a hash when using symbols.
  # option 1
  hash = {key1: value1, key2: value2, key3: value3}
  # option 2
  hash = {:key1 => 'value1', :key2 => 'value2', :key3 => 'value3'}


  # searching a hashes keys for a specific one
  hash = {key1: value1, key2: value2, key3: value3}
  hash['key3'] # => 'value3'

end


class BlocksAndIterators

  # an example block method with a yield method involved
  # setup the method up to 'max'
  def fib_up_to(max) 
  # defining what the iterations are going to be 
    i1, i2 = 1, 1 
  # while the iterations are less than the max
    while i1 <= max
  # temporarily moves to the iterations block
      yield i1
  # the iterations now get set to the calculations given below
        i1, i2 = i2, i1+i2
    end 
  end

  # goes through the block method "fib_up_to(max)" stops when "1000"
  fib_up_to(1000) {|f| print f, " " } # => 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987


  # showing the inject method when called on blocks
  # option 1, this will take the sum of the first iteration and the second time the iteration is run it takes the first iterations sum
  [1,3,5,7].inject {|sum, element| sum+element} # => 16 
  [1,3,5,7].inject {|product, element| product*element} # => 105

  # option 2, this will take the sum of the first iteration and the second time the iteration is run it takes the first iterations sum
  [1,3,5,7].inject(:+) # => 16 
  [1,3,5,7].inject(:*) # => 105

end
