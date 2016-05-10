def build_array(first, second, third)
  display_array = [first, second, third]
end

def add_to_array(arr, new_element)
  new_array = arr << new_element
end

presidental_canidates = []
p presidental_canidates
presidental_canidates = ["Sanders", "Cruz", "Trump", "Clinton", "ME!"]
p presidental_canidates
puts presidental_canidates[0]
presidental_canidates.delete_at(2)
p presidental_canidates[2]
presidental_canidates.insert(2, "Someone reasonable")
p presidental_canidates
presidental_canidates.delete("Sanders")
p presidental_canidates
celeberties = ["Timberlake", "Cardashian", "Gomez", "Skrillix"]
world_leaders = presidental_canidates + celeberties
p world_leaders

p build_array(1, 2, 3)
p add_to_array(presidental_canidates, "Rubio")