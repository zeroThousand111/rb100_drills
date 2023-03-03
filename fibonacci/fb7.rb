# get user input
puts "Please enter sequence number for me to calculate:"
user_number = gets.chomp.to_i

# define fibonacci method
def fibonacci(n)
  if n < 2
    n
  else
    n = fibonacci(n-1) + fibonacci(n-2)
  end
end

# invoke fibonacci method on user input
puts "The fibonaci number when n=#{user_number} is #{fibonacci(user_number)}."
