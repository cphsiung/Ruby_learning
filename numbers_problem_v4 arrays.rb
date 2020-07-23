puts "Let's play a numbers game. How many numbers would you like to enter?"
input = gets.chomp.to_i

class Integer
  def ordinalize
    case self%10
    when 1
      return "#{self}st"
    when 2
      return "#{self}nd"
    when 3
      return "#{self}rd"
    else
      return "#{self}th"
    end
  end
end

collection = []
# using times loop
input.times do |i|
  puts "Enter the #{(i + 1).ordinalize} positive integer:"
  collection.push(gets.chomp.to_i)
end

# comparing if value is greater/less than/equal to the last number
last = collection.last
puts "Comparing to the last value entered, #{last}, here are the observations:"
i = 0
while i < input
    if collection[i] < last
      puts "The value at index #{i}, #{collection[i]} is less than value at the last index, #{last}."
    elsif collection[i] = last
      puts "The value at index #{i}, #{collection[i]} is equal to value at the last index, #{last}."
    else collection[i] > last
      puts "The value at index #{i}, #{collection[i]} is greater than value at the last index, #{last}."
    end
  i += 1
end

# give the max, min value
puts "The minimum value in the array is #{collection.min}"
puts "The maximum value in the array is #{collection.max}"
# give the average value
sum = 0
i = 0
while i < collection.length
  sum += collection[i]
  i += 1
end
puts "The average value in the array is #{sum/(collection.length)}"
