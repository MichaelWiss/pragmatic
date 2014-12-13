#greeting = "Welcome!"
# 3.times do
#  puts greeting.upcase 
#end
#puts Time.new


#block: do....end


#string interpolation: #{greeting}

#name1 = "larry"
#hvalue = 60

#puts name1 + '\'s' + ' health is ' + hvalue.to_s

# puts "#{name1}'s + health is  + #{hvalue * 3}"

# puts "#{name1}'s + health is  + #{hvalue / 9.to_f}"

# puts "#{name1}'s + health is  + #{hvalue / 9.to_i}"

# puts "#{name1}'s + health is  + #{hvalue / 9.0}"

# puts "#{name1}'s + health is  + #{hvalue / 9}"

# name2 = "curly"
# name3 = "moe"

# puts "Players: \n \t #{name1} \n \t #{name2} \n \t #{name3} "

#new line: \n
#tab: \t

# project1 = "ProjectA"
# project2 = "ProjectB"
# project3 = "ProjectC"

# p1value = "$1000"

# puts "#{project1} has #{p1value} in funding"
# puts "Projects: \t\n #{project1} \t\n #{project2} \t\n #{project3}"


name1 = "larry"
health1 = 60
puts "#{name1.capitalize} has a health of #{health1}."

name2 ="curly"
health2="125"
puts "#{name2.upcase} has a health of #{health2}."
health2 =health1
puts "#{name2.upcase} has a health of #{health2}."
health1 = 30
puts "#{name1.capitalize} has a health of #{health1}."
puts "#{name2.upcase} has a health of #{health2}."

name3 ="moe"
health3 = 100
#puts "#{name3.capitalize.rjust(30,"*")} has a health of #{health3.ljust(30,"*")}."
text = "#{name3.capitalize} has a health of #{health3}."
puts text.center(100,"*")

name4 ="Shemp"
health4 = 90
#puts "#{name4}#{health4.ljust(100,'.')}health"
#^not a string
puts "#{name4.capitalize.ljust(30,'.')} #{health4} health."

puts 123.to_s.reverse.to_i

current_time = Time.new
puts current_time















































