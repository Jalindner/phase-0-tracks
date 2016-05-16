def calculate(int_a, int_b, operator)
  result = int_a.public_send operator, int_b
end

puts calculate(7, 10, "+")
puts calculate(3, 4, "*")
puts calculate(3, 4, "-")
puts calculate(10, 2, "/")