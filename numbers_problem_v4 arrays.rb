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
