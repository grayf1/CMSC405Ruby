# in Ruby you can define a function without first having to define a class 
# you must use the keyword def to deine a function 
def say_hello
    return 'Hello!'
end

puts say_hello

# Every function in ruby returns a vaule., Even if you don't include an explicit 
# return statement in the function, ruby will return a value. The value that is 
# that is returned is the last statement processed before thefunction exits 
def tell_the_truth
    'Truth!'
    'Lie!'
    3.<2
end 
puts tell_the_truth

#Functions in Ruby may have parameters 
def say_hello name
    return 'Hello ' + name + '!'
end

puts say_hello 'Benny'

# Every function is an object. Every function is an object of the class it returns 
puts say_hello('Benny').class