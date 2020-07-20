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

i = 1
while i <= input
  puts "Enter the #{i.ordinalize} positive integer:"
  number = gets.chomp.to_i
    if number % 3 == 0
      puts "#{number} is divisible by 3."
    else number % 3 != 0
      puts "#{number} is not divisible by 3."
    end
  i += 1
end
