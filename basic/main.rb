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

