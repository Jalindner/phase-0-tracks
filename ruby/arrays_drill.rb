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