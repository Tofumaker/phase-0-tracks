//Pseudo Code
//The JS method will take a string
//Starting from the end of the string..
// - Add each character to a temporary variable
//Iterate through the entire string
var r_str = ""
function reverse(str) {
  r_str = ""
  for (var i=str.length-1; i>=0; i--){
    r_str += str[i]
  }
  // console.log(r_str)
}

reverse("Hello")
if (1 > 0){
  console.log(r_str)
}
else{
  console.log('No string for you')
}
