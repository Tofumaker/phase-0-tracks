#Define a new variable to store output
#For each letter in password
# => if letter is z 
# =>   then replace with a
# => Otherwise
# =>   Advance letter to next letter in alphabet

# puts("enter password")
# pass = gets.chomp

def encrypt(password)
  e_pw = password
  i = password.length
  while i > 0
    if e_pw[i-1] == "z"
      e_pw[i-1] = "a"
    else  
      e_pw[i-1] = password[i-1].next
    end
    i-=1
  end
  puts(e_pw.to_s)
end     


# define an alphabet variable with all the letters
# for each letter in input
#   get index in alphabet
#   add index plus one to decrypted password

def decrypt(encr)
  a_key = "abcdefghijklmnopqrstuvwxyz"
  d_pw = encr
  j = encr.length-1
  for i in 0..j
    current_letter = a_key.index(encr[i].to_s)
    d_pw[i] = a_key[current_letter-1]
  end
  puts(d_pw)
end

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")

decrypt(encrypt("swordfish"))