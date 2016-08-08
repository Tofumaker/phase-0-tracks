puts("How many employees would you like to process?")
employees = gets.chomp.to_i

while employees > 0

  puts("What's your name?")
  name = gets.chomp

  puts("How old are you?")
  age = gets.chomp

  puts("What year were you born?")
  year = gets.chomp

  right_year = age.to_i + year.to_i

  if right_year == 2015 || right_year == 2016
    right_age = true
    puts("age is true!")
  else
    puts("age is false!")
    right_age = false
  end 

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



  repeat = true
  sunshine_allergy = false
  j = 0
  puts("Please enter any allergies you have. Enter 'done' when complete!")
  while repeat == true
    allergies = gets.chomp
    if allergies == "done"
      repeat = false
    elsif allergies == "sunshine"
      puts("hmm strange allergy to have...")
      sunshine_allergy = true
      j += 1
    else
      j += 1
    end
  end    

  if sunshine_allergy == false
    vampire = "Results inconclusive"
    if right_age == true && bread == true
      vampire = "Probably not a vampire"
    else
    end

    if right_age == false && (health_insurance == false || bread == false)
      vampire = "Probably a vampire"
    else
    end

    if right_age == false && health_insurance == false && bread == false
      vampire = "Almost certainly a vampire"
    else
    end

    if name == "Drake Cula" || name == "Tu Fang"
      vampire = " Definitely a vampire"
    else
    end
  else
    vampire = "Probably a vampire given the allergy...."
  end    

  puts("SURVEY RESULTS: "+vampire)
  employees-=1

end

