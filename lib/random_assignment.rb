class RandomClassmates
  def class_members
    @class_members = ["Romeeka","George","Katrina","Luke","Nikhil","Jonah","Persa","Billy","Bryana","Adam","Tyler"]
  end
  def shuffle_classmates
    shuffle_class_members = class_members.shuffle
    @classmate1 = shuffle_class_members[0]
    @classmate2 = shuffle_class_members[1]
    return @classmate1, @classmate2
  end
end

chapters_part_one = { 1 => "Getting Started", 2 => "Ruby.new", 3 => "Classes, Objects, and Variables", 4 => "Containers, Blocks, and Iterators", 5 => "Sharing Functionality: Inheritance, Modules, and Mixins", 6 => "Standard Types", 7 => "Regular Expressions", 8 => "More About Methods", 9 => "Expressions", 10 => "Exceptions, Catch, and Throw", 11 => "Basic Input and Output", 12 => "Fibers, Threads, and Processes", 13 => "Unit Testing", 14 => "When Trouble Strikes!" }

@assigments = chapters_part_one.each do |chapter|
  chapter = chapter.join(" ")
  randos = RandomClassmates.new.shuffle_classmates
  puts "Short summary of: #{chapter} \n #{randos}"
  randos = RandomClassmates.new.shuffle_classmates
  puts "Post a ruby example of #{chapter}: \n #{randos}"
end


#-------------Future Items------------# 

parts = { 1 => [3..208], 2 => [209..296], 3 => [297..416] }
chapters_part_two = { 15 => "Ruby and Its World", 16 => "Namespaces, Source Files, and Distribution", 17 => "Character Encoding", 18 => "Interactive Ruby Shell", 19 => "Documenting Ruby", 20 => "Ruby and the Web", 21 => "Ruby and Microsoft Windows" }
chapters_part_three = { 22 => "The Ruby Language", 23 => "Duck Typing", 24 => "Metaprogramming", 25 => "Reflection, ObjectSpace, and Distributed Ruby", 26 => "Locking Ruby in the Safe" }
all_chapters = chapters_part_one.merge(chapters_part_two.merge(chapters_part_three))



