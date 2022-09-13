# ruby supports the while, until, do-while, and for loops. 
# loops may be in one line and block form 
# block form while loop
x = 0
while x.<10
    x = x.+1
    print x
end 

# one line form while loop
puts 
x = 0
print x =x.+(1) while x.<10

# the until loop repeats as long as its condition is false 
# one line form until loop
puts 
print x = x.-(2) until x.==2

# block form until loop
puts 
x = 10
until x.==2
    x = x.-2
    print x
end

# block form do while loop
puts 
x = 0
loop do
    x = x.+1
    print x
    break if x.>=10 
end 

# thr for loop repeats a specified number of times 
# the ... syntax creates an exclusive range starting at 0 and going up to, but 
# not including 3. 
puts 
for i in 0...3 do
    print "#{i}. Ho! "
end 

# the .. syntax creates an exclusive range starting at 0 and going up to, and 
# includes 3.
puts 
for i in 0..3 do
    print "#{i}. Ho! "
end 

# for loops are used sparingly in ruby because ruby has methods in various 
# classes that are equivalent to the for loop
puts 
3.times do 
    print 'Ho! '
end 

puts 
print 'Ho! '.*3