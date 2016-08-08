puts("What's your name?")
name = gets.chomp

puts("How old are you?")
age = gets.chomp

puts("What year were you born?")
year = gets.chomp

repeat = true
while repeat == true
  puts("Our company cafeteria serves garlic bread. Should we order some for you? (y/n)")
  answer_g = gets.chomp
  if answer_g == "y"
    bread = true
    repeat = false
  elsif answer_g == "n"
    bread = false
    repeat = false
  else
    puts("Please answer with 'y' or 'n' only!")
  end
end

repeat = true
while repeat == true
  puts("Would you like to enroll in the company's health insurance? (y/n)")
  answer_g = gets.chomp
  if answer_g == "y"
    health_insurance = true
    repeat = false
  elsif answer_g == "n"
    health_insurance = false
    repeat = false
  else
    puts("Please answer with 'y' or 'n' only!")
  end
end
