#Define a new variable to store output
#For each letter in password
# => if letter is z 
# =>   then replace with a
# => Otherwise
# =>   Advance letter to next letter in alphabet

# Method declarations:

# encrypt method, encrypts the password
def encrypt(password)
  #e_pw is intended to store encrypted password string
  e_pw = password
  #i is for iteration
  i = password.length
  while i > 0
    if e_pw[i-1] == "z"
      e_pw[i-1] = "a"
    else  
      e_pw[i-1] = password[i-1].next
    end
    i-=1
  end
  puts("encrypted: "+e_pw.to_s)
  e_pw.to_s
end     


# define an alphabet variable with all the letters
# for each letter in input
#   get index in alphabet
#   add index plus one to decrypted password

#decrypt method, decrypts the password
def decrypt(encr)
  a_key = "abcdefghijklmnopqrstuvwxyz"
  d_pw = encr
  #j is for iteration
  j = encr.length-1
  for i in 0..j
    current_letter = a_key.index(encr[i].to_s)
    d_pw[i] = a_key[current_letter-1]
  end
  puts("decrypted: "+d_pw.to_s)
  d_pw.to_s
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

#The output of the first method is a string, and these methods can be used in any string.
# decrypt(encrypt("swordfish"))

#INTERFACE
# Ask user whether they'd like to encrypt or decrypt
# While user gives the right answer
#   if answer is encrypt
#     ask for input 
#     call encrypt method
#   if answer is decrypt
#     ask for input 
#     call decrypt method
#   Otherwise, 
#     prompt user again for encrypt or decrypt
# Finished!

# Driver Code

user_error = 1

while user_error > 0
  puts("Would you like to encrypt or decrypt (e/d)?")
  choice = gets.chomp
  if choice == "e"
    puts("enter password")
    pass = gets.chomp
    encrypt(pass)
    user_error = 0
  elsif choice == "d"
    puts("enter password")
    pass = gets.chomp
    decrypt(pass)
    user_error = 0
  else
    puts("You didn't select one of the choices given!\n\n")
  end  
end        
