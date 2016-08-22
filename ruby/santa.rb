class Santa
  attr_reader :gender, :age, :ethnicity
  attr_accessor :gender

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
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @weight = 200
  end

  def about
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Age: #{@age}" 
    puts "Reindeer Ranking: #{@reindeer_ranking}"
    puts "Weight: #{@weight}"     
  end

  #REFACTORED
  #Getter Methods
  # def gender
  #   @gender
  # end  

  # def age
  #   @age
  # end
  
  # def ethnicity
  #   @ethnicity
  # end  

  #Setter Methods
  def celebrate_birthday
    @age += 1
    puts("santa is now #{@age} years old")
  end   

  def get_mad_at=(deer)
    @reindeer_ranking.delete(deer)
    @reindeer_ranking.push(deer)
  end

  #REFACTORED
  # def gender=(x)
  #   @gender = x
  # end  

end


robot_santa = Santa.new("Male", "Chinese")
robot_santa.about
robot_santa.speak
robot_santa.eat_milk_and_cookies("Somoan")
robot_santa.celebrate_birthday
robot_santa.get_mad_at = "Dasher"
robot_santa.gender = "Trans"
robot_santa.about









# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# santas.each do |individual_santa|
#   p individual_santa
# end  

# p "THIS IS THE ENDDDDD"
# p santas[2].age