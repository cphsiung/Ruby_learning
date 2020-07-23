# create empty arrays to start
firstNames = []
lastNames = []
studentIds = []
email = []

# firstNames = ["Mocha", "Lily", "Mary", "Matcha", "Last"]
# lastNames = ["Hsiung", "Lin", "Kim", "Wang", "Last"]

# ordinalize numbers to 1st, 2nd, 3rd...etc
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

# get students' first names and last names
puts "Please enter first name and last name for 5 students:"
5.times do |i|
  puts "Please enter the #{(i+1).ordinalize} student's first name:"
  firstNames.push(gets.chomp.upcase)
  puts "Please enter the #{(i+1).ordinalize} student's last name:"
  lastNames.push(gets.chomp.upcase)
end

# randomly generate student IDs between 111111 to 999999
5.times do |i|
  studentIds.push(rand(111111..999999))
end

# generate student email in the format of
# (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
