string_literal = 'string literal with single quotes'
string_literal_is_also = "string literal with double quotes"
string_literal_double_quotes_fun = "You can do fun things with: \nDOUBLE QUOTES"

def fun(method)
	result = "You can do fun things with: \n#{method.downcase}"
	return result
end

puts fun("DOUBLE QUOTES")
puts fun("STRING INTERPOLATION")

array_literal = ["a", "set", "of", "elements", "between", "square", "brackets"]
an_array_is_kept_between = array_literal[6]
puts "An array is kept between #{an_array_is_kept_between}"
so = %w{ What is so special about hashes?}.join(" ")
puts so
answer = so[25..30]
puts "Let's talk about #{answer.upcase}"

hash_literal = {"arrays" => "brackets", "hashes" => "braces", "or as Franklin would say" => "mustaches", "this is a key" => "and this is a corresponding value"}
what_hashes_use = hash_literal["hashes"]
puts "Hashes use #{what_hashes_use}"
puts "or as Franklin would say..."
puts hash_literal["or as Franklin would say"]
puts "\n"

what_is_a_symbol = { :symbol => "symbols", :are => "constant names that you don't have to predeclare", :and => "and are guarenteed to be unique" }
puts what_is_a_symbol[:symbol]
puts what_is_a_symbol[:are]
puts what_is_a_symbol[:and]

class ControlStructures
  def loop?
    true
  end
end

example = ControlStructures.new

if example.loop?
  puts "\nControl structures in ruby end in \'end\'"
else
  puts "You'd get an error."
end

puts "Use statement modifiers as a useful shortcut... since most statements in Ruby return a value" if example.loop?

regular_expressions = "We will cover regular expressions more in chapter seven"
puts "\nregular expressions"
if regular_expressions =~ /We.*seven/
  puts regular_expressions
end
not_correct = "Regular Expressions are really dumb"
correct = not_correct.sub(/dumb/, 'awesome')
puts correct
puts "\n"

puts "code blocks"
code_blocks = %w( are just chunks of code between braces or between do and end. )
code_blocks.each {|code| print " #{code}"}
puts "\n"















