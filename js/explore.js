//Pseudo Code
//The JS method will take a string
//Starting from the end of the string..
// - Add each character to a temporary variable
//Iterate through the entire string
function reverse(str) {
  for (var i=str.length; i>=0; i--){
    var r_str = r_str+str[i]
  }
  console.log(r_str)
}
