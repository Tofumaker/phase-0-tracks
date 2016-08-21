class Santa

  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  @age = 0

  def speak
    puts ("Ho, ho, ho! Haaaapy holidays!")
  end

  def eat_milk_and_cookies(cookie)
    puts ("That was a good #{cookie}!")
    @weight += 10
  end

  def initialize(gender, ethnicity)
    puts ("Initializing Santa instance")
    @gender = gender
    @ethnicity = ethnicity
    @weight = 200
  end

  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Age: #{@age}" 
    puts "Reindeer Ranking: #{@reindeer_ranking}"
    puts "Weight: #{@weight}"     
  end

  #Getter Methods Below

  def age
    @age
  end  

end


robot_santa = Santa.new("Male", "Chinese")

robot_santa.speak
robot_santa.eat_milk_and_cookies("Somoan")

robot_santa.about

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

santas.each do |individual_santa|
  p individual_santa
end  

p "THIS IS THE ENDDDDD"
p santas[2].age