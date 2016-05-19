module Shout
  def self.yell_angrily(words)
    words + "!!!" + " D:<"
  end

  def self.yell_happily(words)
    words + "!" + " (^-^)"
  end
end

puts Shout.yell_angrily("This vaccum sucks")
puts Shout.yell_happily("This vaccum sucks")