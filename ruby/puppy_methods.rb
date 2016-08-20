class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

Tofu = Puppy.new

Tofu.fetch("tennis ball")