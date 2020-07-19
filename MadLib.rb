# MadLib program
puts "Let's play some MadLib game to kill your COVID quarantine time.
      Please enter the information:"

# get a name and capitalize it
puts "Give me a name:"
name = gets.chomp.capitalize
puts "Give me an adjective:"
adj = gets.chomp
# get a number and change it to integer
puts "Give me a number:"
number = gets.chomp.to_i
puts "Give me a color:"
color = gets.chomp
puts "Give me a noun:"
noun = gets.chomp

puts "Here's your MadLib......"
puts "I asked " + name + " what to do to protect myself from the COVID. " +
     name + " said the best thing is to wear " + adj + " masks. " +
     name + " has " + "#{number} " + color +
     " masks and can sell me at $" + "#{number*2}" +"/pc or trade with my " +
     noun + "."
