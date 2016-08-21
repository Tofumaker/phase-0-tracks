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

  def initialize
    puts ("Initializing new puppy instance ...")
  end

end

Tofu = Puppy.new
Tofu.jump(3)
Tofu.jump(2)
Tofu.dog_years
Tofu.speak(3)
Tofu.roll_over
Tofu.fetch("tennis ball")



class Chef

  def initialize
    puts ("Training chef")
  end

  def pizza (toppings)
    # puts("What would like on your Pizza?")
    # toppings = gets.chomp
    pizza_array = toppings.split(" ")
    puts("Great, your pizza will have:")

    pizza_array.each do |topping| 
      puts topping
    end    
  end

  def combo(order)
    if order == 1
      puts "Burger, fries, and a Coke coming up!"
    elsif order == 2
      puts "Chicken sandwich, chips, and Sprite comin up!"
    elsif order == 3
      puts "Salad and water...."
    else
      puts "Sorry that's not on the menu"
    end
  end          
end    

Wolfgang = Chef.new
Wolfgang.pizza("pepperoni cheese garlic")

# puts("What combo would you like?")
# order = gets.chomp.to_i
Wolfgang.combo(2)

chef_array = []
chef_number = 0
while chef_number < 50
  chef_array[chef_number] = Chef.new
  chef_number += 1
end

chef_array.each do |cook|
  puts ("Get ready for the best meal of your life!")
  cook.pizza("cheese sausage onion")
  cook.combo(2)
end

