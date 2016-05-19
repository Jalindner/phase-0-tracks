#module Shout
#  def self.yell_angrily(words)
#    words + "!!!" + " D:<"
#  end

#  def self.yell_happily(words)
#    words + "!" + " (^-^)"
#  end
#end

#puts Shout.yell_angrily("This vaccum sucks")
#puts Shout.yell_happily("This vaccum sucks")

module Shout
  def yell_angrily(words)
    puts words + "!!!" + " D:<"
  end

  def yell_happily(words)
    puts words + "!" + " (^-^)"
  end
end

class Auctioneer
  include Shout
end

class Hockey_fan
  include Shout
end

jeff = Auctioneer.new
jeff.yell_happily("WE GOT 300, 300, DO WE HAVE A 350? 350! 350, 350, 400? 400! 400, 400 SOLD TO THE WOMAN IN THE PEACOCK HAT")

my_mom = Hockey_fan.new
my_mom.yell_angrily("How is that a miss?")
my_mom.yell_happily("Oh it's not a miss")