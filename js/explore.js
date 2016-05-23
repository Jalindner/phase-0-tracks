/*
function reverse
  take a string as an arguement
  create a string variable revString that is initially empty
  create an int variable revIndex that is initially 0
  create a foor loop where 
    for index = string.length; index >= 0; index--
      revString[revIndex] = string[index]
      revIndex++
  return revString
*/

function reverse(string){
  var revString = "";
  for (var index = string.length - 1; index >= 0; index--) {
    revString = revString + string[index];
  }
  return revString;
}

var changeString = reverse("Hello");
console.log(changeString);

var acceptsHealthCare = false;
var acceptsGarlicBread = true;
if(acceptsHealthCare && acceptsGarlicBread){
  console.log("Definatly not a vampire.");
}
else if(acceptsHealthCare || acceptsGarlicBread){
  console.log("Might be a vampire");
}
else{
  console.log("Definatly a vampire");
}


