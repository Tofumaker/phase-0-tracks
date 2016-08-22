module Shout

  def self.yell_angrily(words)
    words + "!!!"+" :("
  end

  def self.yelling_happily(words)
    words = words.downcase
    words + " :) :) :)"
  end

end

include Shout

require 'Shout'


Shout.yell_angrily("WHAT DA FUCK")

Shout.yell_angrily("WHAT DA FUCK")