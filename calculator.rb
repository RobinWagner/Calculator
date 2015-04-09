# Calculator app

def say(string)
  puts "==> #{string}"
end

def perform_operation
  puts 'Please enter one of the following numbers to perform:'
  puts '1  ==> add'
  puts '2  ==> subtract'
  puts '3  ==> multiply'
  puts '4  ==> divide'
  gets.chomp
end

def calculation(num1, num2, operator)
  case
  when operator == '1'
    num1 + num2
  when operator == '2'
    num1 - num2
  when operator == '3'
    num1 * num2
  when operator == '4'
    num1 / num2
  end
end

counter = 1
puts "Please enter #{counter}. number:"
result = gets.chomp

loop do
  operator = perform_operation
  counter += 1
  puts "Please enter #{counter}. number:"
  num = gets.chomp
  result = calculation(result.to_i, num.to_i, operator)
  puts 'To continue enter \'c\'. To get result enter any other value:'
  v = gets.chomp
  break unless v == 'c'
end

puts "The total is #{result}."
