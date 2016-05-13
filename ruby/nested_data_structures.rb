#Everyone's Bacon Bar! With bacon for any diet
menu = {
  bacon_types: ["pork", "turkey", "vegan*"],
  entres: {
    lunch: ["BLT", "Bacon Salad", "Bacon Fajita", "Bacon Quesidilla"],
    dinner: ["Bacon Pizza", "Bacon/Alfredo Pasta", "Bacon in Ramen", "Bacon Burger"],
    dessert: ["Bacon Shake", "Bacon Fudge", "Bacon Cup Cake"]
  } 
}

puts "-Reccomended for those who want our most unique dishes"
puts "Bacon type: " + menu[:bacon_types][0]
puts "For lunch: " + menu[:entres][:lunch][3]
puts "For dinner: " + menu[:entres][:dinner][2]
puts "For dessert: " + menu[:entres][:dessert][1]
puts ""
puts "-Reccomended for the starving vegan"
puts "Bacon type: " + menu[:bacon_types][2]
puts "For lunch: " + menu[:entres][:lunch][2]
puts "For dinner: " + menu[:entres][:dinner][0]
puts "For dessert: " + menu[:entres][:dessert][0]
puts ""
puts "-Reccomended for the health consious"
puts "Bacon type: " + menu[:bacon_types][1]
puts "For lunch: " + menu[:entres][:lunch][1]
puts "For dinner: " + menu[:entres][:dinner][1]
#Our default menu for desserts doesn't seem to interest the common dieter
menu[:entres][:dessert].push("Fortune Cookie")
puts "For dessert: " + menu[:entres][:dessert][3]
puts ""
puts "*By picking the vegan bacon, we assume you want every thing else vegan friendly too."