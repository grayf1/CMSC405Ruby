# Code blocks are chunk of code between either curly braces or a do-end 
#{puts 'Hiya there Kiddo!'}

#do
#{puts 'Hiya there Kiddo!'}
#end

# Naked code blocks will generate a syntax error. code blocks can't exist on 
# their own. They must be passed to methods or returned to methods

# This is how you pass a curly braces code block to a method.
3.times {puts 'Hiya there Kiddo!'}

# this is how you pass a do end code block to a method
3.times do
    puts  'Hiya there Kiddo!'
end

# curly braces are typically used for single line code blocks
# do end is used for multi-line code blocks 
c = [1,2,3]
# this is using the method times(process) because it can take a code block
2.times do
    puts c.first
    puts c.last
    puts c.length
    puts c.pop
end

# This method is capable of executing a code block. It uses the ruby yield method. 
# the Ruby yeild method can be used to execute a code block. 
def call_block
    puts 'Start of Block'
    yield
    yield
    puts 'End of Block'
end

# call call block passing it a code block 
call_block{puts 'In the block'}

# this method uses the yield method that has been provided arguements 
def who_says_what
    yield "Faith", "hello"
    yield "Hafsah", "howdy"
end

# within the code block sent to the function, you must define parameters
# to recieve the arguments and thye must be placed with the pipe symbols 
who_says_what{|name, greeting| puts "#{name} says #{greeting}"}

# another way to invoke a code block is to use the call method
# this method uses the call method to execute a code blokc 
def call_block &b
    b.call
end 

call_block{puts 'Hello there'}

# the call method may be provided arguements too. 
# this method uses the call method that has been provided arguments 
def call_block_greeting &b
    b.call "Faith"
end

call_block_greeting {|name| puts "Hello there " + "#{name}"}

# code blocks are used throughout Ruby with iterators and collections as as array 
moreanimals = ['lions and', 'tigers and', 'bears', 'oh my']
moreanimals.each{ |a| print a, " "}