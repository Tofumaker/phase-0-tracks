applicant = {}

#Gather user info for the first time
puts("please enter name:")
applicant[:name] = gets.chomp

puts("How many(integer) rooms in the house:")
applicant[:rooms] = gets.chomp.to_i

puts("Do you have large pets (y/n):")
user_answer = gets.chomp
if user_answer == "y"
  applicant[:pets] = true
elsif user_answer == "Y"
  applicant[:pets] = true  
else
  applicant[:pets] = false
end

puts("What kind of design theme would you like?")
applicant[:design] = gets.chomp

#Print applicant info for review
puts("Thanks for filling this out. Does this information look right?")

p applicant

puts("If you see an error in a field, please enter the field name to edit it. Otherwise, enter 'none'")

#User gets one chance to modify a field. If field entered does not exist, then a new field will be generated based on user input.
user_answer = gets.chomp
if user_answer == "none"
  p applicant
elsif user_answer == "name"
  puts("please update with new value:")
  applicant[user_answer.to_sym] = gets.chomp
  p applicant
elsif user_answer == "rooms"
  puts("please update with new value:")
  applicant[user_answer.to_sym] = gets.chomp.to_i
  p applicant
elsif user_answer == "pets"
  puts("please update with new value:")
  user_answer = gets.chomp
  if user_answer == "y"
    applicant[:pets] = true
  elsif user_answer == "Y"
    applicant[:pets] = true  
  else
    applicant[:pets] = false
  end
  p applicant      
else
  puts("please update with new value:")
  applicant[user_answer.to_sym] = gets.chomp
  p applicant
end

