

class Puppy
  #-Characteristics
  #string fur_color
  #string ear_format
  #string tail_format
  #boolean can_reach_dinner_table

  #-Behavior
  #lick_face
  #claw_ankles
  #rip_bathroom_tissue
  #point_target
  #bark_spontaneously

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
end

puppy = Puppy.new
puppy.fetch("wet squeaky toy")
