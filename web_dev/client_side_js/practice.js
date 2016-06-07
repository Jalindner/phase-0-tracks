console.log("Script connected");
var h1 = document.getElementsByTagName("h1");
console.log(h1);
var firstH1 = h1[0];
console.log(firstH1);

firstH1.style.background = "green";

function turnTextBlue(event){
  event.target.style.color = "blue";
}
var paragraphs = document.getElementsByTagName("p");
var firstP = paragraphs[0];
firstP.addEventListener("click", turnTextBlue);

var jpg = document.getElementById("jpg");
jpg.style.position = "absolute";
var gif = document.getElementById("gif");
gif.style.visibility = "hidden";
gif.style.border = "2px solid black";
gif.style.position = "absolute";
function hideImg(event){
  event.target.style.visibility = "hidden";
  var gif = document.getElementById("gif");
  gif.style.visibility = "visible";
}
jpg.addEventListener("mouseenter", hideImg);