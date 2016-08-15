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

#DATA STORAGE*****
#Spies hash will house keys named 'agent 0', 'agent 1', etc...
#each key will contain an array that houses the real name and alias in positions 0 and 1 respectively

spies = {}
n=0 #for iteration of agent key numbers
repeat = true

#define vowels and non vowels
$vowels = "AaEeIiOoUu"
$not_vowels = "BbCcDdFfGgHhJjKkLlMmNnPpQqRrSsTtVvWwXxYyZz"

#Methods for changing both vowels and non-vowels
def vowel_change(current_v)
  if current_v == "u"
    current_v = "a"
  elsif current_v == "U"
    current_v = "A"  
  else  
    v_location = $vowels.index(current_v)
    current_v = $vowels[v_location+2]
  end
  current_v
end    

def not_vowel_change(current_nv)
  if current_nv == "z"
    current_nv = "b"
  elsif current_nv == "Z"
    current_nv = "B"
  else  
    nv_location = $not_vowels.index(current_nv)
    current_nv = $not_vowels[nv_location+2]
  end
  current_nv
end    


#BEGINNING OF MAIN WHILE LOOP
while repeat == true
  #Prompt user for name and then implement previously defined methods
  current_spy=[]
  p "Enter full name of Agent "+n.to_s
  full_name = gets.chomp
  current_spy[0] = full_name

  #swap first name and last name
  temp_array = full_name.split(' ')
  temp_array.reverse!
  temp_string = temp_array.join(' ')

  l = temp_string.length - 1
  while l >= 0
    if $vowels.include?(temp_string[l])
      temp_string[l] = vowel_change(temp_string[l])
    elsif $not_vowels.include?(temp_string[l])
      temp_string[l] = not_vowel_change(temp_string[l])
    else
    end  
    l-=1  
  end  
  current_spy[1] = temp_string
  spies["Agent "+n.to_s] = current_spy
  p "Assigned ALIAS: " + temp_string

  #repeat the entire process?
  p "Enter another name? (y/n)"
  user_choice = gets.chomp
  if user_choice == "y"||user_choice=="Y"
    repeat = true
    n+=1
  else
    repeat = false
  end
end #END OF MAIN WHILE LOOP 

#Print out the entire spy database
p " "
p "Just to repeat the information..."
spies.each do |spy_number, dossier|
  p spy_number + " is " + dossier[0] + ", AKA " + dossier[1]
end  

        

