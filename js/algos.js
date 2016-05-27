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
      //console.log(stringArray[i].length);
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


//Create a function that takes two objects as arguements
function EqualPairs(objectA, objectB){
  this.objectA = objectA;
  this.objectB = objectB;
  
  
  //function that compares all keys and their values
  //create variable hasEquals = false
  //for each key in objectA
    //for each key in objectB
      //if objectA[key] value == objectB[key] value
        //hasEquals = true
  this.tryEqual = function() {
    hasEquals = false;
    for (var keyA in objectA){
      for (var keyB in objectB){
        if (objectA[keyA] == objectB[keyB]){
          hasEquals = true;
          console.log(hasEquals);
          break;
        }
        break;
      }
    }
  };
}


//create function that takes a viariable as an arguement
function CreateArray(arrayLength){
  this.arrayLength = arrayLength;
  var createdArray = [];
  //while i < arrayLength
    //create random string of 3 to 10 characters
    //insert created string into an array
  for(i = 0; i < 5; i++){
    createdArray.push(CreateString(Math.random() * (10-3) + 3));
  }
  return createdArray;
}

//create a function that takes a variable as an arguement
function CreateString(stringLength){
  this.stringLength = stringLength;
  var newString = "";
  var possibleChars = "abcdefghijklmnopqrstuvwxyz";
  //create a random string based on 
  //the arguement
  for(r = 0; r < stringLength; r++){
    newString += possibleChars.charAt(Math.floor(Math.random() * possibleChars.length));
  }
  return newString;
}


var basicArray = new LongestElement(["longestestester", "long", "longer", "longestest", "longest"]);
basicArray.stringLength();
console.log("__________________________");
var nameArray = new LongestElement(["Tina", "Carol", "Sarah", "Evey"]);
nameArray.stringLength();
console.log("__________________________");

mark = {name: "Mark", age: 23, occupation: "Engineer"};
angela = {name: "Angela", age: 24, occupation: "biologist", favoritePet: "Dogs"};
markTheSecond = {name: "Mark", favoritePet: "Dogs", age: 23};

compare = new EqualPairs(mark, angela);
compare.tryEqual();
console.log("__________________________");
compareSecond = new EqualPairs(mark, markTheSecond);
compareSecond.tryEqual();
console.log("__________________________");
compareThird = new EqualPairs(angela, markTheSecond);
compareThird.tryEqual();
console.log("__________________________");

randArray = new CreateArray(5);
console.log(randArray);
lengthOfRand = new LongestElement(randArray);
lengthOfRand.stringLength();