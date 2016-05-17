class Santa_class
  def initialize
    puts "Santa initialized"
  end
  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end
  def eat_milk_and_cookies(cookie_type)
    puts "That was a tasty #{cookie_type}"
  end
end

rob = Santa_class.new
rob.speak
rob.eat_milk_and_cookies("oatmeal w/ raisin")