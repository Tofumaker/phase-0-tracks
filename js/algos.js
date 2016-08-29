//Pseudo Code for Longest Phrase Finder
//Take a string input
//Split it into separate words and store them in an array
//Define a storage variable and keep it empty for now
//Cycle through the array
//If array item is longer than the storage variable, then set the storage variable equal to current array item.
//After cycling through entire array, output the storage variable

function Longest(str){
  var l_str = ""
  var other_long_words = []
  var storage_array = str.split(" ")
  //The for loop below finds the first instance of the longest word(s) in the given string
  for (var i = 0; i <= storage_array.length - 1; i++) {
    if (storage_array[i].length > l_str.length){
      l_str = storage_array[i]
      var str_index = i
    }
  }
  //The for loop below loops through once more to find any other words of the same length
  for (var i = 0; i <= storage_array.length -1; i++) {
    if (storage_array[i].length == l_str.length && str_index!=i){
      other_long_words.push(storage_array[i])
    }
  }
  console.log("The longest word is "+l_str)
  if (other_long_words.length>0){
    console.log("Other words of equal length are: "+ other_long_words)
  }
  
}

Longest("This is a test sentence")
Longest("Here is a second test to make sure that the algorithm works. teeeeeest")