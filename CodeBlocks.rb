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
puts 
('a'..'e').each {|char| print char}

# there are other iterator methods in ruby, like upto
puts 
3.upto(6) {|i| print i}

# code blocks may be returned by fnuctions, but first they must be converted into 
# Proc objects. Ruby has a function named lambda that converts a code block into
# a Proc object
def n_times thing
    lambda {|n| thing * n}
end

# call n_times and store its return in a variable 
# {|n| 23 * n}
puts
p1 = n_times 23
puts p1.class

# to execute the code block contained in p1, use the call statement 
puts p1.call 3
puts p1.call 4

# call n_times and store its return in a variable, but 
# give it a different argument 
# {|n| "Hello " * n}
p2 = n_times "Hello "

#to execute the code block contained in p2, use the call statement 
puts p2.call 3

# this function contains a do end code block that will be returned as a Proc object
def day_of_week
    lambda do |today|   
        if today.saturday?
             'Do chores around the house.'
        elsif today.sunday?
             'Relax'
        else
             'Go to school.'
        end 
    end 
end

# call day_of_week and store its return in a variable
d = day_of_week 
puts d.call Time.now