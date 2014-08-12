
### Challenge 3 - Reverse a string

# Reverse a string in place.  In other words, do not create a
#new string or use other methods on the string such as reverse.
#The goal of the problem is to use a loop and the string accessors
#to figure out which values to swap for other values.  Below is the output.

# ```
# Enter a string:
# reverse_me
# em_esrever
# ```


def reverse (string)
  new_string = string.split("")
  i = new_string.length
  count = 1

  new_string.each do |char|
    print new_string[i - count]
    count += 1
  end
end

string = gets.chomp
reverse(string)


