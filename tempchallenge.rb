### Challenge 1 - Temperature Converter

# Create a simple temperature convertor.  It should function like the example below:

# ```
# Type '1' to convert from Celsius to Fahrenheit OR type '2' to convert from Fahrenheit to Celsius
# 1
# Enter Celsius Temperature:
# 24
# 24 degrees Celsius is equal to 75.2 degrees Fahrenheit

def tempConverter

    puts "Enter a 1 to start converting Celsius to Fahrenheit, enter a 2 to convert F to C."
    response = gets.chomp
    if response == 1.to_s
    puts "Enter a Celsius temperature."
    celsius = gets.chomp
    # puts celsius
    convert = 9 / 5 * (celsius.to_i + 32)
    puts celsius.to_s + " degrees Celsius is equal to " + convert.to_s + " degrees Fahrenheit."

  elsif response == 2.to_s
  puts "Enter a Fahrenheit temperature."
  fahrenheit = gets.chomp
  # puts fahrenheit
  convert = 5 / 9 * (fahrenheit.to_i - 32)
  puts fahrenheit.to_s + " degrees Fahrenheit is equal to " + convert.to_s + " degrees Celsius."

else response != 1 || 2
  puts "Please enter a 1 to convert temperature to Fahrenheit, enter a 2 to convert to Celsius."
  tempConverter()

end
end

tempConverter()



