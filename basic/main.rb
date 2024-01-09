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
    exist
when "French", "french"
    puts "Bonjour"
    exit
else 
    puts "Hello!"
    exit 
end
## ternary operations
age = 12
puts (age >= 21) ? "Adult": "Minor"
## loops in ruby