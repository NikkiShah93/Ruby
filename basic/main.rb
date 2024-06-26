## Ruby basics
## everything is an object
print "Hello World!"
## variable starts with lowercase
## or _
## for getting data from user
## use gets
## and convert it to other types
## the following way
print "Enter a number: "
first_num = gets.to_i
print "Enter another number: "
second_num = gets.to_i
## for removing the \n after input
## use chomp
print "Enter your name: "
user_input = gets.chomp
## and output data
## put adds a new line
## where print doesn't
puts first_num.to_s + " + " +  second_num.to_s + " = " + (first_num + second_num).to_s
## there are 5 arithmetic operators
## +, -, *, /, %
puts "6 + 4 = "+ (6+4).to_s
puts "6 - 4 = "+ (6-4).to_s
puts "6 * 4 = "+ (6*4).to_s
puts "6 / 4 = "+ (6/4).to_s
puts "6 % 4 = "+ (6%4).to_s
## with floats
## 14 digits of accuracy is norm
big_float = 1.12345678901234
puts (big_float + 0.0000000000005).to_s
## everything is a class in ruby
puts 1.class
puts 1.2.class 
puts "this is a string".class
## a constant starts with an uppercase letter
A_CONSTANT = 4.67
A_CONSTANT = 1.6 
## it'll allow you to change it
## but will throw a warning
puts A_CONSTANT
## if you want to read and write to files
## if we wanted to create a new file
## we can do the follwoing
write_handler = File.new("newFile.out", "w")
write_handler.puts("This is the content").to_s
write_handler.close
## and then for reading
data_from_file = File.read("newFile.out")
puts "File content: "+ data_from_file
## if we wanted to load
## and execute another ruby file
## we can do the following
## load "fileName.rb"
## for multiline commentes
=begin 
this is a multiline comment
=end
puts "End of multi-line comment"
## for conditional operations
age = 12
## conditions start with if
## and should be closed with end
## available comparison operators
## ==, !=, <, >, <=, >=
## logical operators
## &&, ||, !, and, or, not
if (age >= 5) && (age <= 6)
    puts "You're in kindergarten"
elsif (age >= 7) && (age <= 13)
    puts "You're in middle school"
else
    puts "Stay Home"
end
puts "true && false = " + (true && false).to_s
puts "true || false = " + (true || false).to_s
puts "!false = " + (!false).to_s
## the interesting comparison operator
## is this <=>
## where it returns 0 when the sides are equal
## 1 if the first is greater
## and -1 if first is less than 
puts "5 <=> 10 = "+(5<=>10).to_s 
## unless is another cool operator to use
## which basically only execute
## the code after unless
## where the condition is false
unless age > 4
    puts "no school" 
else
    puts "go to school"
end
## we could use conditions in other ways
puts "You're young" if age < 40
## we can also use case statements
puts "Enter Greeting: "
greetings = gets.chomp
case greetings
when "Spanish", "spanish"
    puts "Hola"
    # exit
when "French", "french"
    puts "Bonjour"
    # exit
else 
    puts "Hello!"
    # exit
end
## ternary operations
age = 12
puts (age >= 21) ? "Adult": "Minor"
## loops in ruby
x = 1
loop do
    x+=1
    ## next is similar to continue in python
    next unless (x%2) == 0
    puts x
    ## and end break the loop
    ## once this condition is met
    break if x >= 10
end
## and then the while loops
y = 1
## we have the condition next to while
while y <= 10
    y+=1
    next unless (y%2)==0
    puts y 
end
## until loop
## will loop until the condition is met
a = 1
until a >= 10
    a+=1
    next unless (a%2)==0
    puts a 
end
## and then for loops
## using an array
numbers = [1, 2, 3, 4, 5]
for number in numbers 
    next unless (number%2)==0
    ## use var inside strings the following way
    puts "the number is #{number}"
end
## another way to cycle through an array
## will be to use each do
groceries = ["bananas", "sweet potatos", "pasta", 'tomatoes']
## food is the placeholder for values
## coming out of each
groceries.each do |food|
    puts "Buy some #{food}"
end
## we can also cycle through numbers
## by using a range
(0..5).each do |n|
    puts "The number is #{n}"
end
## next thing is functions
def add_num(num_1, num_2)
    return num_1.to_i + num_2.to_i
## be careful
## the functions also need to have end
end
puts add_num(3, 6)
## and then exceptions
## they have different names in ruby
## if we think a section will throw an error
## we can put it inside begin
a = 1
b = 3
begin 
    div = a / b
## and then we have rescue
## if there's an error
rescue
    puts "the division had an issue"
    # exit
end
## and you can throw your own exception by raise
def check_age(age)
    raise ArgumentError, "Enter a positive number" unless age > 0 
end 
begin
    check_age(-1)
rescue ArgumentError
   puts "The age is invalid"
end
## strings in ruby
## using formatted strings
## we can do arithmatic inside {}
## be careful
## these only work with double-q
## even though you can have single-q for strings
puts "The number is #{(2 * 3)%4} \n\n"
puts 'The number is #{(2 * 3)%4} \n\n'
## having multiline strings
multiline_string = <<EOM 
This is a long string
with interpolation like
#{((9+3)**2)/7} \n\n
EOM
puts multiline_string
## you can combine strings w interpolation
first_name = "John"
last_name = "Doe"
full_name = "#{first_name} #{last_name}"
puts "full name : #{full_name}"
## you can check if a string contains another string
puts full_name.include?(first_name)
## you can also get the size of the string
puts "this is the full name size : #{full_name.size}"
## we can count the # of certain char
## it'll count the occ of each 
puts "Vowels : " + full_name.count("aeiou").to_s
## use ^ for negations
puts "Consonants : " + full_name.count("^aeiou").to_s
## we can also use start_with 
puts full_name.start_with?(last_name)
## we can get the index 
puts "the index is : #{full_name.index(last_name).to_s}"
## we can check if two strings are the same
puts first_name.equal?first_name
## we can also change the case like so
puts "changing the case"
puts full_name.upcase 
puts full_name.downcase
puts full_name.swapcase
## we can also strip the string like python
puts full_name.lstrip
puts full_name.rstrip
puts full_name.strip
## and for formatting of strings
## we can do right, left, and center justify
## and then use . for any spaces
puts "formatted strings:"
puts full_name.rjust(20, '.')
puts full_name.ljust(20, '.')
puts full_name.center(20, '.')
## we can also use chop and chomp for cleaning
## where chop removes the last char
## and chomp removes line breaks if any
puts full_name.chop 
puts full_name.chomp
## we can also pass in char that we want to remove
puts full_name.chomp('oe')
## we can also use delete for removing certain char
puts full_name.delete('ho')
## we can use split to break down strings
## passing // will break it down into char
puts "Using split:"
puts full_name.split(//)
puts full_name.split()
## now lets go through objects
## we can create classes the following way
class Animal
    ## initialize is called whenever a new obj is created
    ## similar to __init__ in python
    def initialize 
        puts "Creating a new animal"
    end 
    ## and we can have setter and getter 
    def set_name(new_name)
        ## instead of using self
        ## we use @ in ruby
        @name = new_name
    end 
    def get_name
        ## this will return name
        @name
    end
    ## another way to get name
    def name 
        @name 
    end 
    ## another way to set name 
    def name=(new_name)
        ## we can check to see if name is valid
        ## by checking if it's a number for instance
        if new_name.is_a?(Numeric)
            puts "Name can't be a number"
        else 
            @name = new_name
        end 
    end
end 
## and now we can create new objects
cat = Animal.new 
## setting the name
cat.set_name("Peekaboo")
## getting the name 
puts "Cat name is #{cat.get_name}"
puts "Cat name is #{cat.name}"
## changing the name
cat.name = "Garfield"
puts "The new name is #{cat.name}"
## lets create a new class
class Dog
    ## this will create all the getter functions
    attr_reader :name, :height, :weight
    ## and this will create all the setters
    attr_writer :name, :height, :weight
    ## or alternatively
    ## create both at the same time
    ## using attr_accessor :name, :height, :weight
    def break
        return "Generic bark"
    end 
end
## creating a new object 
rover = Dog.new
rover.name = "Rover"
puts "Dog name is #{rover.name}"
## and we can inherit all the methods of another class
class GermanShepard < Dog 
    ## we can also override methods
    def bark 
        return "Loud bark!"
    end 
end 
## and creating a new obj
max = GermanShepard.new 
max.name = "Max"
puts "#{max.name} says #{max.bark}"
## for formatted print
## we can use printf
## %s for strings, %d for ints, and %.3f for 3 decimal floats
printf "%s goes %s\n", max.name, max.bark
## now for modules
## it's useful to add functinality to a class
## because you can only inherit from one class
## but you can use multiple modules 
## when accessing the modules
## we use require, and given they're in the same dir
require_relative "human"
module AnimalModule 
    def make_sound
        puts "Grrr"
    end
end
class Cat 
    ## for adding modules 
    include AnimalModule
end 
garfield = Cat.new 
garfield.make_sound
## now using the human module
class Scientist
    include Human
    ## if we use prepend
    ## the methods in the module
    ## will precede the ones defined in class
    ## prepend Human
    def act_smart 
        return "E = mc^2"
    end 
end
einstein = Scientist.new
einstein.name = "Albert"
puts "#{einstein.name} says #{einstein.act_smart}"
## now polymorphism
## statically typed languages use duck typing
## to achieve a version of polymorphism
## because they pay less attention 
## to the class type vs the methods 
## that can actually be called from an obj
class Bird
    def tweet(bird_type)
        ## it will call the passed  
        ## bird type's version of the tweet
        bird_type.tweet
    end
end
class Cardinal < Bird 
    ## we're going to have tweet in here as well
    def tweet
        puts "Tweet tweet"
    end
end
class Parrot < Bird
    def tweet
        puts "Squawk"
    end
end
generic_bird = Bird.new 
## and to simulate polymorphism
## we can pass in the class
generic_bird.tweet(Cardinal.new)
generic_bird.tweet(Parrot.new)
## now for symbols
## which are basically strings
## that can't be changed
## and are useful for conserving memory
## or to speed string comparison
## and you can create them the following way
## and the actual value 
## is what it's called
## and they're very commonly used 
## as keys inside hashes
:John 
puts "This is :John value -> #{:John}"
puts "This is :John class -> #{:John.class}"
puts "This is :John object ID -> #{:John.object_id}"
## now for arrays
## we can create them a few different ways
array_1 = Array.new
## an array w 5 spaces
## or having a default value
array_2 = Array.new(5)
array_3 = Array.new(5, "default")
## and the items can be of different types
array_4 = [1, "two", 3, 5.5]
puts array_1
puts array_2
puts array_3
puts array_4
## they're 9 indexed
puts array_4[2]
## we can get multiple values
## and then join them together
puts array_4[2,2].join(', ')
## or get them the following way
puts array_4.values_at(0,1).join(',')
## if we want to add a value
## at the beginning of an array
array_4.unshift(0)
puts array_4.join(', ')
## or removing the first item
array_4.shift()
puts array_4.join(', ')
## or add values to the end
array_4.push(10, 15)
puts array_4.join(', ')
## and removing an item from the end
array_4.pop 
puts array_4.join(', ')
## we can also concat two arrays
array_4.concat([2,6,'nine'])
puts array_4.join(', ')
## and we can get the size
puts "The size of the array is #{array_4.size().to_s}"
## checking if the array inclues a value
puts "Array contains 10 : #{array_4.include?(10).to_s}"
## countig the occ
puts "Array contains #{array_4.count(10).to_s} 10s "
## checking if it's empty
puts "is array empty? #{array_4.empty?.to_s} "
## we can also use p to print arrays
p array_4
## or use each to loop 
array_4.each do |i|
    puts "the value is #{i}"
end
## now hashes
## which are basically key value pairs
number_hash = {"PI"=> 3.14, "Golden"=> 1.618, "e"=>2.718}
## and we can get specific keys the following way
puts "the PI value is #{number_hash["PI"]}"
## we can also create new hashes the following way
## where the even positions are key
## and the odd ones are values
superheros = Hash["Clark Kent", "Superman", "Bruce Wayne", "Batman"]
puts "The superhero name is #{superheros["Clark Kent"]}"
## we can also add new keys
superheros["Barry Allen"] = "Flash"
## you can have a default value
## for cases where there's no such key
samp_hash = Hash.new('No Such Key')
puts "Looking for an invalid key : #{samp_hash['random_key']}"
## you can use update on hashes
## which are distructive merges
## meaning, if there are duplicates
## they'll be eliminated
superheros.update(number_hash)
puts "The superhero hash: #{superheros}"
## we can instead use merge
## which is non distructive
## and would keep all the keys
superheros.merge({"PI" => 3.1416})
puts "The superhero hash: #{superheros}"
## you can use each with hashes as well
superheros.each do |key, val|
    puts "The key is #{key} and the value is #{val}"
end
## there are many functions available for hashes
puts "Is the key Bruce Wayne present? #{superheros.has_key?("Bruce Wayne").to_s}"
puts "Is the value Batman present? #{superheros.has_value?("Batman").to_s}"
puts "Is is empty? #{superheros.empty?.to_s}"
puts "What is the size? #{superheros.size.to_s}"
## and for deleting keys
superheros.delete("PI")
puts "What is the size after delete? #{superheros.size.to_s}"
## and now the enumerables
## given you want to use them
## you need a function called each
## and yield values
class Menu
    include Enumerable 
    def each 
        yield "pizza"
        yield "spaghetti"
        yield "salad"
        yield "water"
    end
end
menu_options = Menu.new
## and then use each
menu_options.each do |option|
    puts "the menu item is #{option}"
end 
## we can also check if an option is available
p menu_options.find{|option| option = "pizza"}
## or return items that are a certain criteria
p menu_options.select{|option| option.size <= 5}
## or not select/reject items with a certain criteria
p menu_options.reject{|option| option.size > 6}
## we can pick the first item
p menu_options.first 
## or the first few
p menu_options.take(2)
## or not show the first two
p menu_options.drop(2)
## we can get min and max items
## in this case it'll be alphabetical order
p menu_options.min 
p menu_options.max
## we can sort or reverse it
p menu_options.sort 
menu_options.reverse_each{|option| puts option}
## and lastly, the file object
## you can create new files the following way
file = File.new("authors.out", "w")
## and write to it 
file.puts "William Shakespeare"
file.puts "Agatha Christie"
file.puts "Barbara Cartland"
## and then you should close it
file.close 
## and you can also read the files
puts File.read("authors.out")
## or you want to open a file for appending
## by passing a instead of w
file = File.new("authors.out", "a")
file.puts "Danielle Steel"
file.close 
puts File.read("authors.out")
## if we want to loop through 
File.open("authors.out") do |author|
    author.each do |info| 
        puts info
    end
end