# array to store user inputs
inputs = []

puts "Please provide five integer values between 12 and 21, both inclusive:"
5.times do |i|
  puts "What's number #{i+1}?"
  inputs.push(gets.chomp)
end

# get a value user wants to compare
puts "Give me a number you want information about:"
value = gets.chomp

# the first hash
randNumber = Hash.new
randNumber[:random_numbers] = 5.times.map {rand(12..21)}
randNumber[:user_input] = inputs

# the second hash with count of numbers
counts = Hash.new



# compare the value with 1st and 2nd hashes
puts "Using only the first hash:"
if randNumber.values_at(random_numbers)
  puts "The number, #{value} shows up "

end
