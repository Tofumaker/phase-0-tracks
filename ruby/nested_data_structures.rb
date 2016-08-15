#Setting up the nested data structure
movies = {
  favorite:{
    name: "Minority Report",
    run_time: 145,
    cast: ["Tom Cruise","Colin Farrell", "Samantha Morton"],
    family_friendly: false
  },
  second_favorite:{
    name: "Collateral",
    run_time: 97,
    cast: ["Jamie Foxx", "Tom Cruise", "Jada Pinkett Smith"],
    family_friendly: false
  },
  third_favorite:{
    name: "Star Wars",
    run_time: 135,
    cast: ["Mark Hamil", "Harrison Ford","Carrie Fisher", "James Earl Jones"],
    family_friendly: true
  }
}

#Present the info in an intuitive manner
movies.each do |rank, info|
  puts("My "+rank.to_s+" is " + movies[rank][:name])
  puts("Here's the rest of the info:")
  p "Run Time: " + movies[rank][:run_time].to_s + " minutes"
  p "Cast: " + movies[rank][:cast].to_s
  p "Family Friendly: "+ movies[rank][:family_friendly].to_s
  p " "
end

# p movies

# p movies[:favorite]
# p movies[:third_favorite][:family_friendly]

puts ("The main actress in the movie #{movies[:second_favorite][:name]} is #{movies[:second_favorite][:cast][2]}.")
