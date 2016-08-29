//Pseudo Code for Longest Phrase Finder
//Take an array of strings for input
//Define a storage variable and keep it empty for now
//Cycle through the array
//If array item is longer than the storage variable, then set the storage variable equal to current array item.
//After cycling through entire array, cycle through again to catch strings of the same length
//output the storage variable
//output any additional phrases if applicable

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




//DRIVER CODE TO TEST FUNCTIONS
Longest(["This is a test","This is a test array","This is the last item"])
Longest(["This is a test", "A second test", "Third and final here","Forth and final here"])