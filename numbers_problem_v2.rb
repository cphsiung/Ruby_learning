# Numbers problem
puts "This program will ask you to enter numbers and share if the number is less than 20."
puts "Please input a positive integer"
number1 = gets.chomp.to_i
puts "Please input a positive integer again"
number2 = gets.chomp.to_i
puts "Please input a positive integer one last time"
number3 = gets.chomp.to_i

# If the number is greater than or equal to 20, display a message to share so
# and a different message otherwise.
value = 20
# check if number1 is less than 20
if number1 < value
  puts "#{number1} is less than 20."
else number1 < value
  puts "#{number1} is greater than or equal to 20."
end
# check if number2 is less than 20
if number2 < value
  puts "#{number2} is less than 20."
else number1 < value
  puts "#{number2} is greater than or equal to 20."
end
# check if number3 is less than 20
if number3 < value
  puts "#{number3} is less than 20."
else number3 < value
  puts "#{number3} is greater than or equal to 20."
end
