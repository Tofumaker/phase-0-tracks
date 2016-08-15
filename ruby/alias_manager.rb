#Pseudo Code

#create an empty hash (each key will be a spy housing an array of real name and alias)
  #Prompt user for full name of a spy
  #create a new key in the hash for every spy the user enters
  #Store real name in first position of key's array
  #Split the two parts of the name and swap spots, store that in the a temporary array
    #create 2 variables for vowels and non-vowels
    #use those to compare and advance the letters in the password
    #join the temporary array into a single string
  #store the alias in the second position of the Key's array
  #prompt user to repeat

spies = {}
n=0 #for iteration of entire process
repeat = true
while repeat == true
  p "Enter full name"
  spies["agent "+n.to_s] = gets.chomp
  p spies
  p "Enter another name? (y/n)"
  user_choice = gets.chomp
  if user_choice == "y"||user_choice=="Y"
    repeat = true
    n+=1
  else
    repeat = false
  end
end    
        

