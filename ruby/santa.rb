class Santa
  attr_reader :gender, :age, :ethnicity, :name
  attr_accessor :gender, :age, :ethnicity, :name

  def speak
    puts ("Ho, ho, ho! Haaaapy holidays!")
  end

  def eat_milk_and_cookies(cookie)
    puts ("That was a good #{cookie}!")
    @weight += 10
  end

  def initialize(gender, ethnicity)
    puts ("Initializing Santa instance")
    @name = "BLANK"
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    @weight = 200
  end

  def about
    puts "Name: #{@name}"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{@ethnicity}"
    puts "Age: #{@age}" 
    # puts "Reindeer Ranking: #{@reindeer_ranking}"
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


# robot_santa = Santa.new("Male", "Chinese")
# robot_santa.about
# robot_santa.speak
# robot_santa.eat_milk_and_cookies("Somoan")
# robot_santa.celebrate_birthday
# robot_santa.get_mad_at = "Dasher"
# robot_santa.gender = "Trans"
# robot_santa.about

#Random Santa Name Generation
def generate_name
  first_name = ["Black", "White","Tall","Gray","Ugly","Pretty","Sick","Golden","Pink"]
  last_name = ["Bird","Snow","Jaime","Jean","Harper","Toaster","Gifter"]
  first_name.sample+" "+last_name.sample+" "+rand(300..999).to_s
end  



#Generate the Santas and store them in santas array
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

5.times do
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

santas.each do |nick|
  nick.age = rand(0..140)
  nick.name = generate_name
end



santas.each do |individual_santa|
  puts (" ")
  individual_santa.about
  puts (" ")
end  
