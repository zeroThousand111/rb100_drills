# get user input
<<<<<<< HEAD
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
=======
puts "What number (n) of the Fibonacci Sequence would you like me to calculate?"
puts "Enter sequence number:"
user_number = gets.chomp.to_i

# define method to calculate Fibonacci number using recursion
def fibonacci(n)
    if n < 2
        return n
    else 
        n = fibonacci(n-1) + fibonacci(n-2)
    end
end

# invoke method on user input and output result

puts fibonacci(user_number)
>>>>>>> 19e5348e3b2589ca88230f4fec049a409499b71e
