puts("Name of hamster?")
hname = gets.chomp

puts("Volume level? (1-10)")
hvolume = gets.chomp

puts("Fur color?")
hcolor = gets.chomp

puts("Good for adoption? (y/n)")
hadoption = gets.chomp

puts("Estimated age?")
hage = gets.chomp  

puts("Name: "+hname)
puts("Vol: "+hvolume) 
puts("Color: "+hcolor)
puts("Good?: "+hadoption) 

if hage ==""
  hage=nil
  puts("You didn't enter age!")
else 
  puts("Age: "+hage)
end 