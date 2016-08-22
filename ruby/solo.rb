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

class Knight

#Attributes and initial attributes
  attr_reader :name, :health, :stamina, :evil
  attr_accessor :name, :health, :stamina, :evil

  def initialize(user_name)
    @name = "Ser "+user_name
    @health = 100
    @stamina = 100
    @evil = false
  end

#Methods
  def about
    puts " "
    puts "Name: #{@name}"
    puts "Health: #{@health}"
    puts "Stamina: #{@stamina}"
    puts "Evil: #{@evil}"
    puts " "
  end

  def swing_sword(n)
    puts "#{@name} swings a sword #{n} times!"
    @stamina -= n*10
  end

  def shoot_arrow
    puts "#{@name} shoots an arrow "+rand(100..300).to_s+" meters!"
  end

  def drink_blood
    if @evil == true
      puts "Mmmmm Blood!"
      @health += 20
    else
      puts "Only evil knights can drink blood!"
    end
  end

end

derek = Knight.new("Tofumaker")
derek.about
derek.swing_sword(rand(1..5))
derek.shoot_arrow
derek.drink_blood
derek.evil = true
derek.drink_blood
derek.about
