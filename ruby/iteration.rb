# def custom_block
#   puts"this is before the block"
#   yield
#   puts"this is after the block"  
# end

# custom_block {puts "This is the block"}

names = ["Marvan", "Derek", "Bob"]

titanic = {
  actor: "Leo",
  actress: "Kate",
  director: "James"
}


# names.each do |i|
#   puts i
# end

# p names

# names.map! do |i|
#   i.upcase
# end

# p names    

titanic.each do |job_title, name|
  puts ("#{name} is the #{job_title}")
end  