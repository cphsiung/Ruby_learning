# ask user how much money they have
puts "Welcome to your ultimate sugar solution candy machine!"
puts "How much money do you have? $"
money = gets.chomp.to_f

# display candy options
if money == 0
  puts "$#{money} gets you nowhere. Come back when you save more."
else
  puts "$#{money}, that's all?"
  puts "Well, let me show you what we got here."
  # list of candy options
  options = {
              "A" => 0.65,
              "B" => 0.50,
              "C" => 0.75,
              "D" => 1.25,
              "E" => 3.75,
  }
  candyName = {
    "A" => "Twix",
    "B" => "Chips",
    "C" => "Nutter Butter",
    "D" => "Skittles",
    "E" => "Giant Lollipop",
  }

  i = 0
  while i < options.length()
    puts "#{options.keys[i]} $#{options.values[i]} #{candyName.values[i]}"
    i += 1
  end

  puts "So, what do you want to buy?"
  choice = gets.chomp.upcase

  # check if user can afford and give change if any
  if money > options[choice]
    puts "Thank you! Here's your candy and change $#{money - options[choice]}"
  elsif money == options[choice]
    puts "Thank you! Here's your candy."
  else money < options[choice]
    puts "Your $#{money} is not enough to buy #{choice}"
    puts "Save more and come back."
  end
end
