# Ruby provides a whole set of I/O related methods in the Kernel Module 
# Ruby module is like a Java interface

# the print method prints each parameter its passed to standard out (stdout)
# it does not append a new line to the end of its ouput
print "cat", [1,2,3], 99, "\n"
print "cat", [1,2,3], 99, "\n"

# observations: arguements to the print method werren't enclosed in parenthesis
# delimiters like the semi colon, were not needed at the end of the lines of code.

print "Enter your first name: "

# the gets method returns the next line of input from standard in (stdin)
# including the new line that's generated when the user hits the enter key.
# the chomp method removes the new line at the end of the input
fname = gets.chomp

# observations: dont have to specify types. empty parens aren't required. 

# the puts method is like the print method, but it appends a new line to its output
# to reference a variable value within a String, you must String interpolation 
# syntax and you must use double quotes with the String
puts "Your first name is #{fname}"
 # puts 'Your first name is #{fname}'

print "Enter your last name: "
lname = gets.chomp
puts "Your full name is #{fname} #{lname}"

# the printf method is like the puts method, but it allows you to format
# output by using format specifiers. the printf method does not append a new line
printf "Your full name is %s %s\n", fname, lname


printf "My age is %d and my weight is %.2f\n", 22, 124 

# the putc method prints the first character of the parameter its passed 
# it does not append a new line at the end of its output. 
print "Your initials are: "
putc fname
putc lname