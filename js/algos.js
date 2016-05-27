//Create a function that takes an array as an arguement
//
function LongestElement(stringArray){
  this.stringArray = stringArray;
  
  //create a function that searches the array for the 
  //element with the longest string
    //create an integer variable = 0 that stands for the longest element so far
    //for each element in the array
      //if the elements string.length is greater than the current longest value
      //longest = stringArray[i].length
  this.stringLength = function(){
    var longest = 0;
    for (var i = 0; i < stringArray.length; i ++){
      console.log(stringArray[i].length);
      if (stringArray[i].length > longest){
        longest = stringArray[i].length;
      }
    }
    console.log("The longest array has " + longest + " characters.");
  };
}

var userArray = new LongestElement(["longestestester", "long", "longer", "longestest", "longest"]);
userArray.stringLength();
