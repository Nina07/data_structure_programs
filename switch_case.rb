
# Ruby program to illustrate the  
# concept of case statement 
  
#!/usr/bin/ruby    
  
print "Input from one, two, three, four: "  
  
# taking input from user 
# str = gets.chomp 
  
# hardcoded input 
str = "two"
  
# using case statement 
case str  
  
# using when 
when "one"  
  puts 'Input is 1'
  
when "two"  
  puts 'Input is 2'
  
when "three"  
  puts 'Input is 3'
  
 when "four"  
  puts 'Input is 4'
  
else  
  puts "Default!"
  
end  
