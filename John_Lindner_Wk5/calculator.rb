#I have struggled to find ways for this to accept 
#multi-digit integers
def calculate(int_a, int_b, operator)
  result = int_a.public_send operator, int_b
end

#puts calculate(7, 10, "+")
#puts calculate(3, 4, "*")
#puts calculate(3, 4, "-")
#puts calculate(10, 2, "/")

operation_hash = {}
operation = ""
calc_count = 0
puts "Enter your operation, please do not use spaces, please stick to single digit integers"
puts "Enter 'done' when finished"
until operation == "done"
  operation = gets.chomp
  if operation == "done"
    break
  else
    if operation[0].to_i.to_s != operation[0] || operation[2].to_i.to_s != operation[2]
      puts "Invalid integers"
    elsif operation[1] != "+" && operation[1] != "-" && operation[1] != "*" && operation[1] != "/"
      puts "Invalid operation or double+ digits entered"
    else
      answer = calculate(operation[0].to_i, operation[2].to_i, operation[1])
      puts answer
      operation_hash[operation] = answer
      calc_count += 1
    end
  end
end

puts "#{calc_count} calculations performed"
operation_hash.each do |line, result|
  puts "#{line} = #{result}"
end