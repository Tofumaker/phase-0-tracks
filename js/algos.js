//Pseudo Code for Longest Phrase Finder
//Take an array of strings for input
//Define a storage variable and keep it empty for now
//Cycle through the array
//If array item is longer than the storage variable, then set the storage variable equal to current array item.
//After cycling through entire array, cycle through again to catch strings of the same length
//output the storage variable
//output any additional phrases if applicable

//Pseudo Code for Matching Pair Finder
//Create a function that takes two objects as input
//Create a variable called matching as a boolean and set to false upon initialization 
//For every key-and-value pair in first object, cycle through and compare every key-and-value pair in the second object
//If both match, then set variable matching to true
//Return the match variable at upon conclusion of function

//Pseudo Code for random string generator
//create a function that randomly selects a character out of the alphabet
//implement this random character selector a random number of times to generate a string of random length
//Repeat this process the number of times denoted by the function's input


//LONGEST STRING ALGORITHM
function Longest(storage_array){
  var l_str = ""
  var other_long_phrases = []
  //The for loop below finds the first instance of the longest phrase(s) in the given string
  for (var i = 0; i <= storage_array.length - 1; i++) {
    if (storage_array[i].length > l_str.length){
      l_str = storage_array[i]
      var str_index = i
    }
  }
  //The for loop below loops through once more to find any other strings of the same length
  for (var i = 0; i <= storage_array.length -1; i++) {
    if (storage_array[i].length == l_str.length && str_index!=i){
      other_long_phrases.push(storage_array[i])
    }
  }
  console.log("The longest string is '"+l_str+"'")
  if (other_long_phrases.length>0){
    console.log("Other strings of equal length are: "+ other_long_phrases)
  }  
}//END OF LONGEST STRING ALGORITHM

//MATCHING KEY-VALUE PAIR ALGORITHM
function Matching(object_1, object_2){
  var matched_pair = false
  for (var key_1 in object_1) {
    for (var key_2 in object_2) {
      if (key_1 == key_2 && object_1[key_1] == object_2[key_2])
        matched_pair = true
    }
  }
  console.log("Matching Pair Detected: "+matched_pair)
  return matched_pair
}//END OF MATCHING KEY-VALUE PAIR ALGORITHM

//RANDOM ARRAY GENERATOR
function Array_Generate(array_length){
  var generated_array = []
  var alphabet = "abcdefghijklmnopqrstuvwxyz"
  var i = 0
  while (i < array_length){
    var word_length = Math.floor((Math.random()*10)+1)
    var generated_word = ""

    for (var j = 0; j < word_length; j++){
      var random_letter_index = Math.floor(Math.random()*26)
      var random_letter = alphabet.charAt(random_letter_index)
      generated_word += random_letter
    }
    generated_array[i] = generated_word
    i +=1
  }
  console.log(generated_array)
}//END OF RANDOM ARRAY GENERATOR


//DRIVER CODE TO TEST FUNCTIONS
Longest(["This is a test","This is a test array","This is the last item"])
Longest(["This is a test", "A second test", "Third and final here","Forth and final here"])

Matching( {make:"Ford",year:1990,american:true} , {make:"toyota",year:2000,american:false})
Matching( {make:"Ford",year:2000,american:true} , {make:"toyota",year:2000,american:false})
Matching( {Make:"toyota",yearo:2000,americano:true} , {make:"toyota",year:2000,american:true})

Array_Generate(1)
Array_Generate(3)
Array_Generate(5)




