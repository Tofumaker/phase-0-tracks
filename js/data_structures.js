var colors = ["blue", "red", "green", "yellow"];
var names = ["Secretariat", "Spirit", "Ed", "Hidalgo"];
colors.push("magenta");
names.push("Socks");

// console.log(colors)
// console.log(names)

var new_horses ={};
for (var i = colors.length-1; i >= 0; i--) {
  new_horses[names[i]]=colors[i];
}

console.log(new_horses);

