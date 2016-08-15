def custom_block
  puts"this is before the block"
  yield
  puts"this is after the block"  
end

custom_block {puts "This is the block"}


#defining Array and Hash
names = ["Marvan", "KimJongUn", "Derek", "Bob", "Jennifer",  "KimJongIl", "KimIlSung"]

titanic = {
  producer: "Maxwello",
  actor: "Leo",
  actress: "Kate",
  director: "James",
  lighting: "Francis",
  catering: "Gordon",
  support: "Kothy"
}


#Basic methods for array and hash
puts("Here's each name in the array")
names.each do |i|
  puts i
end
puts(" ")

puts("Here's all the names in array capitalized")
names.map! do |i|
  i.upcase
end
p names
puts(" ")
   
puts("Here's a rundown of the Titanic hash")
titanic.each do |job_title, name|
  puts ("#{name} is the #{job_title}")
end
puts(" ")


#Uncapitalize Array names
names = ["Marvan", "KimJongUn", "Derek", "Bob", "Jennifer",  "KimJongIl", "KimIlSung"]

#Array methods here
p names
names.delete_if {|name| name == "Bob"}
p names

names.keep_if {|name| name.length > 5}
p names

p names.reject! {|name| name.include? "Kim"}

p names.drop_while {|name| name.length < 7}

#Hash methods here
p titanic
titanic.delete_if{|job_title, name| job_title == :director}
p titanic

titanic.keep_if {|job_title, name| name.include? "o" }
p titanic

titanic.reject!{|job_title, name| name.include? "don"}
p titanic

p titanic.drop_while{|job_title, name| name.length > 4 }


