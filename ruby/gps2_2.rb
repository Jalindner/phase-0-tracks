def create_list(list, grocery_hash={})
  list_array = list.split(" ")
  quantity = 0
  list_array.each do |item|
    grocery_hash[item]=quantity
  end
  print_list(grocery_hash)
  return grocery_hash
end

def add_item(item, grocery_hash={})
  grocery_hash.merge! ({item => 1})
end

def remove_item(item, grocery_hash={})
  grocery_hash.delete_if{|food, quantity| food == item}
end

def update_quantity(item, grocery_hash={}, quantity)
  if grocery_hash.include?(item)
    grocery_hash[item] = quantity
  end
  return grocery_hash
end

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
