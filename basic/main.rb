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
puts "File content: "+data_from_file
