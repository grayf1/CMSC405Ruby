# 1. Write the lines of code that use a do-while loop to compute
# the factorial of a number. Calculating a factorial means to multiply 
# a series of descending natural numbers; for example,
# 1 factorial = 1
# 2 factorial = 2 * 1 = 2
# 3 factorial = 3 * 2 * 1 = 6
# 4 factorial = 4 * 3 * 2 * 1 = 24
# 5 factorial = 5 * 4 * 3 * 2 * 1 = 120
# 6 factorial = 6 * 5 * 4 * 3 * 2 * 1 = 720

 
i = 1
fact =1 
loop do
    fact = fact.*i
	i = i.+1
    print i
	break if i.<=fact
end 

# 2. Write a function named gen_factorial that computes and returns
# the factorial of a number. It must have one integer input parameter 
# that contains the number for which a factorial is to be computed.

def gen_factorial int 
	i=1
	fact =1
	while(i<=int)
		fact=fact*i
		i+=1
	end
end 

# 3. Write the code to call the gen_factorial function and output the 
# return from the function.
puts gen_factorial 6

# 4. Write a function named gen_factorial that returns a code block. The 
# code block should compute and return the factorial of a number. 
# The code block must have one integer input parameter that contains 
# the number for which a factorial is to be computed.
 def gen_factorial
	lambda do |int|
	end 
end
# 5. Write the code to call the gen_factorial function and store the 
# code block it returns in a variable named f.
f = gen_factorial
# 6. Write the code to execute the code block contained in f 
# and output the code block's return.
puts f.call 6

# 7. Explain how you interacted with the Ruby programming language? Your
# response to this question must be at least 1 full paragraph (50 words). -  Ruby is platform independent. 
# It may be run on any operating system  (Windows, Linux, Mac, etc.) as long as the platform dependent Ruby 
# interpreter installed. Ruby is a scripting language, which means its code is executed at run-time 
# by an interpreter. In class we use the Visual Studio Code integrated development environment to 
# interact with Ruby.

# 8. What is Ruby's programming model?- an open-source object-oriented scripting language

# 9. Code blocks that exist on their own are called what?

# 10. What does the Ruby ... syntax create? -  the ... syntax creates an exclusive range starting at 0 and going up to, but 
# not including the last integer. 

# Bonus (5 points). Write the full path to where Ruby's language libraries 
# exist on your laptop. - C:\Ruby31-x64\lib\