#Pseudocode
#Design a 'Knight' class 
#----------Attributes----------
#Name: String
#Health: Integer
#Stamina: Integer
#Evil: Boolean
#----------Methods-------------
#Swing Sword
#Shoot Arrow
#Drink Blood of Innocent


#DEFINE THE KNIGHT CLASS
class Knight
#Attributes and initial attributes
  attr_reader :name, :health, :stamina, :evil
  attr_accessor :name, :health, :stamina

  def initialize(user_name)
    @name = "Ser " + user_name
    @health = 100
    @stamina = 100

    if user_name.downcase.include?('z')||user_name.downcase.include?('x')
      @evil = true
    else
      @evil = false
    end    

  end

#Methods
  def about
    puts "  Name: #{@name}"
    puts "  Health: #{@health}"
    puts "  Stamina: #{@stamina}"
    puts "  Evil: #{@evil}"
    puts " "
  end

  def swing_sword(n)
    n.times do
      if @stamina > 0
        puts "----------#{@name} swings a sword----------"
        @stamina -= 10
        puts "----------Stamina: #{@stamina}----------"
      else
        puts "----------#{@name} is too weak!----------"
      end  
    end
  end

  def shoot_arrow
    puts "----------#{@name} shoots an arrow " + rand(100..300).to_s + " meters!----------"
  end

  def drink_blood
    if @evil == true
      puts "----------Mmmmm Blood!----------"
      @health += 20
    else
      puts "----------Only evil knights can drink blood!----------"
    end
  end

end #END OF KNIGHT CLASS


# #BASIC DRIVER CODE FOR TESTING PURPOSES
        # derek = Knight.new("Tofumakerx")
        # derek.about
        # derek.swing_sword(rand(1..8))
        # derek.shoot_arrow
        # derek.drink_blood
        # derek.about


#USER INTERFACE
$army =[]#To store all created knights

def main_menu
  puts " "
  user_repeat = true
  while user_repeat == true
    puts "What would you like to do? (Enter Number)"
    puts "1: Create Knight(s)"
    puts "2: Control Knights"
    puts "3: View Army"
    puts "4: Exit"
    user_input = gets.chomp
    if user_input == "1"
      create_knights
      user_repeat = false
    elsif user_input == "2"
      control_knights
      user_repeat = false
    elsif user_input == "3"
      view_army
      user_repeat = false
    elsif user_input == "4"
      user_repeat = false      
    else
      puts "Not a valid selection!"  
    end
  end  
end

def create_knights
  puts " "
  puts "How many Knights would you like to create?"
  user_input = gets.chomp
  user_input.to_i.times do
    temp_name =""
    puts "Please Enter Knight's Name (Note: Knights with the letters 'x' or 'z' in their names are evil because those letters are evil!)"
    temp_name = gets.chomp
    temp_knight = Knight.new(temp_name)
    $army<<temp_knight
  end
  main_menu  
end

def control_knights
  puts " "
  $army.each do |soldier|
    puts($army.index(soldier).to_s+": "+soldier.name)
  end

  repeat = true
  action_repeat = false

  puts "Please select Knight (Enter Number)"
  while repeat == true
    user_input = gets.chomp.to_i
    if $army[user_input] == nil
      puts ("not a valid selection!")
    else
      chosen_knight = $army[user_input]
      puts " " 
      puts "You have chosen #{chosen_knight.name}!"
      repeat = false
      action_repeat =true
    end  
  end

  while action_repeat == true
    puts " "
    puts "What would you like #{chosen_knight.name} to do?"
    puts "1: Swing Sword"
    puts "2: Shoot Arrow"
    puts "3: Drink Blood of Innocent"
    puts "4: #{chosen_knight.name}'s Stats"
    puts "5: Exit to Main Menu"
    user_input = gets.chomp
    if user_input == "1"
      puts "How many times would you like to swing sword?"
      user_input = gets.chomp.to_i
      chosen_knight.swing_sword(user_input)
    elsif user_input == "2"
      chosen_knight.shoot_arrow
    elsif user_input == "3"
      chosen_knight.drink_blood
    elsif user_input == "4"
      chosen_knight.about      
    elsif user_input == "5"
      action_repeat = false
    else
      puts "Not a valid selection!"
    end
  end    
  main_menu    
end

def view_army
  puts " "
  if $army.empty?
    puts ("Your army is empty!")
  else  
    $army.each do |soldier| 
      puts "Info for knight: " + $army.index(soldier).to_s
      soldier.about
    end
  end
  puts("Total Army Size: " + $army.length.to_s + " knights")
  main_menu
end   

#MAIN DRIVER CODE
main_menu


#PRINTS FINAL RUNDOWN OF ARMY
puts "Thanks for playing! Here's another rundown of your army"
puts " "
$army.each do |soldier| 
  puts "Info for knight: " + $army.index(soldier).to_s
  soldier.about
end
puts("Total Army Size: " + $army.length.to_s + " knights")


