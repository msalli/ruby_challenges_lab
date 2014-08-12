### Challenge 4 - Bank Transactions

# Create a prompt that asks the user if they would like to display their balance,
# withdraw or deposit. Write three methods to perform these calculations and
# output the result to the user. Here is a sample output:

# ```
# Your current balance is
# 4000
# What would you like to do? (deposit, withdraw, check_balance)
# deposit
# How much would you like to deposit?
# 1000
# Your current balance is 5000
# Are you done?
# yes
# Thank you!
# ```


def bank
  start = rand(1000000)

  puts "Would you like to check_balance, deposit, or withdraw?"
  answer = gets.chomp

  if answer == "check_balance"
    puts start
    puts "Are you done?"
    reply = gets.chomp

      if reply == "no" || reply == "No"
        bank()
      else puts "Thank you! Have a nice day!"
      end

  elsif answer == "deposit"
    puts "How much would you like to deposit?"
    deposit = gets.chomp
    newbal = deposit.to_i + start.to_i
    puts "Your current balance is now " + newbal.to_s

    puts "Are you done?"
    reply = gets.chomp

      if reply == "no" || reply == "No"
        bank()
      else puts "Thank you! Have a nice day!"
      end

  elsif answer == "withdraw"
    puts "How much would you like to withdraw?"
    withdrawl = gets.chomp
    newbal = start.to_i - withdrawl.to_i
    puts "Your current balance is now " + newbal.to_s

    puts "Are you done?"
    reply = gets.chomp

    if reply == "no" || reply == "No"
      bank()
    else puts "Thank you! Have a nice day!"
    end

  else answer != "check_balance" || "withdraw" || "deposit"
    puts "I'm sorry, that is not an option. Please try again."
    bank()
  end
end

bank()
