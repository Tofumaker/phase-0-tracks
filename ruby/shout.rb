module Shout

  def yell_angrily(words)
    
    p words + "!!!"+" :("
  
  end

  def yelling_happily(words)
    words = words.downcase
    p words + " :) :) :)"
  end

end

class Duck
  include Shout
end

class Lion
  include Shout
end    


# require_relative 'Shout'
# Shout.singleton_methods

darkwing = Duck.new
simba = Lion.new



darkwing.yell_angrily("QUACK QUACK QUACK QUACK")
darkwing.yelling_happily("QUACK QUACK")

simba.yell_angrily("roarr")
simba.yelling_happily("pURRrrr")