//Create a function that takes an array as an arguement
//
function LongestElement(stringArray){
  this.stringArray = stringArray;
  
  //create a function that searches the array for the 
  //element with the longest string
  this.stringLength = function(){
    //create an integer variable = 0 that stands for the longest element so far
    var longest = 0;
    //for each element in the array
      //if the elements string.length is greater than the current longest value
        //longest = stringArray[i].length
    for (var i = 0; i < stringArray.length; i ++){
      console.log(stringArray[i].length);
      if (stringArray[i].length > longest){
        longest = stringArray[i].length;
      }
    }
    console.log("The longest strings in this array are: ");
    //match the element or elements with the final longest value
    //for each element in the array
      //if the array's element.length == longest
        //print that element and the length
    for (var i = 0; i < stringArray.length; i++){
      if (stringArray[i].length == longest){
        console.log(stringArray[i] + ": " + longest + " chars");
      }
    }
  };
}

var basicArray = new LongestElement(["longestestester", "long", "longer", "longestest", "longest"]);
basicArray.stringLength();
console.log("__________________________");
var nameArray = new LongestElement(["Tina", "Carol", "Sarah", "Evey"]);
nameArray.stringLength();