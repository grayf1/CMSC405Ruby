# Decisions (expressions) in Ruby evaluate to true or false
x= 4 

puts x.<5
puts x.<=4
puts x.>4

# True and false are even objects
puts true.class
puts false.class
puts true.methods.inspect
puts false.methods.inspect

# simple decisions may be in one line or block form 
# block form if
if x.==4
    puts 'x is equal to 4.'
end 

# Observations: there are no curly brackets arpund the code block, no semicolon, there are no parenthesis
# there is a dot after the x. The keyword end is sued to tell ruby the end of the code block 

# one line form if
puts 'x is equal to 4.' if x.==4
puts 'x is not equal to 5.' if x.!=5

# as a programmer, you should strive to write fewer lines of code.

# one line form unless
# unless tests if its condition is false 
puts 'x is not equal to 5.' unless x.==5

# block form unless else 
unless x.==4
    puts 'x is not equal to 4.'
else
    puts 'x is equal to 4.'
end

# decisions may involve other types of objects, including Dates.
today = Time.now
puts today
puts today.class

# block form if elseif
if today.saturday?
    puts 'Do chores around the house.'
elsif today.sunday?
    puts 'Relax'
else
    puts 'Go to school.'
end 

# there are other values in ruby that evaluate to true 
puts 'true is true.' if true
puts '1 is true.' if 1
puts '0 is true' if 0
puts '1.5 is true' if 1.5
puts 'Time.now is true' if Time.now

# the only things that don't evaluate to true are false and nill
puts 'false is not true' if false
puts 'nil is not true' if nil

# unless tests if its condition is false
puts 'false is not true' unless false
puts 'nil is not true' unless nil

# the logical operators && and || work very similiar to the way they do in java 
puts false && true
puts false || true

# there is a short circut evaluation in Ruby. The Interprter skips the evaluation 
# of sub-expressions in a logical expression. 
# if sub-expressions are joined by &&, the interpreter will skip the evaluation of
# all subsequent expressions as soon as the first false sub expression is encountered. 
# puts true && this_will_cause_an_error
puts false && this_will_cause_an_error

# if sub expressions are joined by || the intrpreter will skip the evaluation of 
# all subsequent expressions as soon as the first true sub expression is encountered
puts true || this_will_cause_an_error
# puts false || this_will_cause_an_error


