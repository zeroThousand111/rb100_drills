# get user input
puts "Please enter a number from which to countdown:"
user_number = gets.chomp.to_i

# create countdown method using recursion
def countdown(n)
  if n == 0
    puts "ZER000000000!!!!"
    puts "Coming... ready or not....!!!"
  else
    puts n
    n = countdown(n-1)
  end
end

# invoke countdown method on user input

countdown(user_number)