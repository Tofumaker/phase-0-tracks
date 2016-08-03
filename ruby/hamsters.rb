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

if hage ==""
  hage=nil
  puts("You didn't enter age!")
else 
puts("age:"+hage)
end  

puts("name: "+hname)
puts("vol: "+hvolume) 
puts("color: "+hcolor)
puts("Good?: "+hadoption) 
