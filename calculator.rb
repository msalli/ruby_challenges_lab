# ```
# What calculation would you like to do? (add, sub, mult, div)
# add
# What is number 1?
# 3
# What is number 2?
# 6
# Your result is 9
# ```

#try a case statement instead of repeating elsif

def calculator
  response = nil
  while response != "q"

  puts "What calculation would you like to do? Enter add, sub, mult, or divide."

  response = gets.chomp
  if response == "add"
    puts "What is the first number in your equation?"
    num_one = gets.chomp.to_i

    puts "What is the second number?"
    num_two = gets.chomp.to_i
    equation = num_one + num_two

    puts "Your result is: " + equation.to_s

  elsif response == "sub"
    puts "What is the first number in your equation?"
    num_one = gets.chomp.to_i

    puts "What is the second number?"
    num_two = gets.chomp.to_i
    equation = num_one - num_two

    puts "Your result is: " + equation.to_s

  elsif response == "mult"
    puts "What is the first number in your equation?"
    num_one = gets.chomp.to_i

    puts "What is the second number?"
    num_two = gets.chomp.to_i
    equation = num_one * num_two

    puts "Your result is: " + equation.to_s

  elsif response == "divide"
    puts "What is the first number in your equation?"
    num_one = gets.chomp.to_i

    puts "What is the second number?"
    num_two = gets.chomp.to_i
      if num_two != 0
        equation = num_one / num_two
        puts "Your result is: " + equation.to_s
      else
        puts "Hey! You can't do that!"
      end

  else  response != "add" || "sub" || "mult" || "divide"
    puts "Wait, that's not an option!"
    calculator()
  end
  end
end

calculator()