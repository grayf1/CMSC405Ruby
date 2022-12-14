# Ruby is a pure object oriented language. Even arrays and functions are objects
# the number 4 is an object. 
# the class method is a ruby method that may be called on any object and it 
# returns the class of the objecty
puts 4.class

# the method returns the methods that may be called on an object
# the inspect method allows us to see the methods in a more readable form
puts 4.methods.inspect

# Mathmatical and comparison operators are treated like methods in Ruby 
# each of these statements illustrates a method being called
# the thing before the period is referred to as the reciever 
# the thing after the period is the name of the method being called
puts 4.+4
puts 4.-2
puts 4.<=3

# mathmatical and comparison operations may be performed in a traditional manner
puts 4 + 4
puts 4 - 2 
puts 4 <= 3

# method names may have a question mark at the end. Theyre answering a question
# they return true or false
puts 4.even?

# write that tells us the class of "Jin Joint" and the methods available to it 
puts "Jin Joint".class
puts "Jin Joint".methods.inspect
puts "Jin Joint".length
puts "Jin Joint".index("o")


# method names may have an exclamation mark at the end. Methods that modify the state of an object on which
# they're called have the exclamation mark at the end. There is always a second version 
# of these methods that don't have the exclamation mark. They dont modify the state of the object. They 
# make a copy of the object and then modify the copy. 
str = "Jin Joint"
upStr = str.upcase
puts upStr
puts str

mixStr = str.upcase!
puts mixStr
puts str

# write the lines of code that tell the class of 5.2 and the methods avaiable to it. 
puts 5.2.class
puts 5.2.methods.inspect
puts 5.2.<=4.3
puts 5.2.round