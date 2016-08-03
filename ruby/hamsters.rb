puts("Name of hamster?")
hname = gets.chomp

puts("volume level? (1-10)")
hvolume = gets.chomp

puts("fur color?")
hcolor = gets.chomp

puts("good for adoption? (y/n)")
hadoption = gets.chomp

puts("estimated age?")
hage = gets.chomp 

if hage ==""
  hage=nil
  puts("You didn't enter anything!")
else 
puts("age:"+hage)
end  

puts("name:"+hname)
puts("vol:"+hvolume) 
puts("color"+hcolor)
puts("Good?"+hadoption) 
