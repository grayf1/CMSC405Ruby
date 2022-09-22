# 1. Write a block form if-else that tests if an integer is even and
# outputs 'Integer is even.', if the integer is even, else it outputs
# 'Integer is odd'.
b = 4
if b.even?
    puts 'Integer is even.'
else
   puts 'Integer is odd.' 
end


# 2. Write a function named odd_or_even that takes an integer as a parameter 
# and returns the String 'Integer is even.', if the integer parameter is even, else 
# it returns 'Integer is odd'.
def odd_or_even int
    if int.even?
        'Integer is even.'
    else
        'Integer is odd.' 
    end
end

# 3. Call odd_or_even passing an even number and output the return from the
# function
puts odd_or_even 3
# 4. Call odd_or_even passing an odd number and output the return from the
# function
puts odd_or_even 5
# 5. Write a function named odd_or_even that returns a code block. The code
# block should take an integer as a parameter and return the String 'Integer
# is even.', if the integer parameter is even, else it should return 'Integer is odd'.
def odd_or_even 
    lambda do |int|
            if int.even?
                'Integer is even.'
            else
                'Integer is odd.' 
            end
        end
    end
# 6. Write the code to call odd_or_even and store the code block it returns in 
# a variable named p.
p = odd_or_even
# 7. Write the code to execute the code block contained in p for an even integer
# and output the code block's return.
puts p.call 4
# 8. Write the code to execute the code block contained in p for an odd integer
# and output the code block's return.
puts p.call 5
# 9. Who created the Ruby programming language? - Yukihiro Matsumoto

# 10. Explain how you interact with the Ruby programming language? - Ruby is platform 
# independent; as long as the platform dependent ruby is installed you can run on 
# linux, windows, mac etc. 

# 11. What is Ruby's programming model? - an open-source object-oriented scripting language

# 12. What is Ruby's typing model? - dynamically typed 

# 13. Explain what it means to be weakly (or loosely) typed? -  a programming language that does
#  not require a variable to be defined

# 14. Explain what it means to be statically typed? - a programming language characteristic 
# in which variable types are explicitly declared and thus are determined at compile time 

# 15. Write the full path to where Ruby's language libraries exist on your laptop. C:\Ruby31-x64\lib\