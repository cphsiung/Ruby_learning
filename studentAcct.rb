# create empty arrays to start
firstNames = []
lastNames = []
studentIds = []
emails = []

# sample place holder
# firstNames = ["JEREMY", "MARY JEN", "LILY", "MICHAEL", "STEPH"]
# lastNames = ["LIN", "SMITH", "WONG", "JORDAN", "CURRY"]

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
  studentIds.push(rand(111111..999999).to_s)
end

# generate student email in the format of
# (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org
5.times do |i|
  if firstNames[i].include? " "
    # find index of space and +1 index to get second initial for the first name
    firstinitial = firstNames[i][0] + firstNames[i][firstNames[i].index(" ")+1]
  else
    firstinitial = firstNames[i][0]
  end
  string = lastNames[i] + studentIds[i][-3..-1] + "@adadevelopersacademy.org"
  emails.push(firstinitial + string)
end
