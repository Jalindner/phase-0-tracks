
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def create_list(list, grocery_hash={})
  list_array = list.split(" ")
  quantity = 0
  list_array.each do |item|
    grocery_hash[item]=quantity
  end
  print_list(grocery_hash)
  return grocery_hash
end

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  #gets.chomp item
  #gets.to_i an integer for quantity
  #add item and quantity to a hash
  #item =  key and the quantity = data
# output: returns hash[item => quantity]
def add_item(item, grocery_hash={})
  grocery_hash.merge! ({item => 1})
end

# Method to remove an item from the list
# input: item name and the hash{}
# steps: 
  # hash.each do
  # hash.delete_if {|key| key == item}
# output: returns hash[item => quantity]
def remove_item(item, grocery_hash={})
  grocery_hash.delete_if{|food, quantity| food == item}
end

# Method to update the quantity of an item
# input: update_quantity, item, and hash
# steps: 
  #search for item in hash
  #hash.map! do |key|
    #if key = item
    #item[quantity] = update_quantity
# output: returns hash[item => quantity]
def update_quantity(item, grocery_hash={}, quantity)
  if grocery_hash.include?(item)
    grocery_hash[item] = quantity
  end
  return grocery_hash
end

# Method to print a list and make it look pretty
# input:
# steps:
# output:
def print_list(grocery_hash={})
  puts "************"
  puts "Grocery List"
  puts "************"
  grocery_hash.each do |food, quantity| puts "#{food}: #{quantity}"
  end
  puts ""
end
  
hash = {}
list_string = "carrots apples cereal pizza"
create_list(list_string, hash)
add_item("tomatoes", hash)
add_item("lemonade" ,hash)
add_item("onions" ,hash)
add_item("icecream" ,hash)
update_quantity("tomatoes", hash, 3)
update_quantity("lemonade" ,hash, 2)
update_quantity("onions" ,hash, 1)
update_quantity("icecream" ,hash, 4)
remove_item("lemonade", hash)
update_quantity("icecream", hash, 1)
print_list(hash)
