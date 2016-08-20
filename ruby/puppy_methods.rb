class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(barks)
    barks.times do
      p "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years
    puts("Enter human years:")
    human_years=gets.chomp
    human_years = human_years.to_i
    dog_age = human_years*7
    puts("That dog is " + dog_age.to_s + " in dog years.")
  end

  def jump(n)
    jump_variable = "jump"
    n.times do 
      jump_variable.insert(1, "u")
    end
    return p jump_variable  
  end
    
end

Tofu = Puppy.new
Tofu.jump(3)
Tofu.jump(2)
Tofu.dog_years
Tofu.speak(3)
Tofu.roll_over
Tofu.fetch("tennis ball")