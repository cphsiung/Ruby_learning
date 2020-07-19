# Numbers problem
puts "Please input a positive integer"
number1 = gets.chomp.to_i
puts "Please input a positive integer again"
number2 = gets.chomp.to_i
puts "Please input a positive integer one last time"
number3 = gets.chomp.to_i

addValue = 20
puts "Twenty added to the numbers you entered gives us " +
     "#{number1 + addValue}, " +
     "#{number2 + addValue} and " +
     "#{number3 + addValue}."
