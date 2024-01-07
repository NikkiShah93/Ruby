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