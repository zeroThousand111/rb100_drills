# get user input
puts "Which number in the Fibonacci sequence would you like to know?"
user_number = gets.chomp.to_i

# define fibonacci method using recursion
def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

# invoke method on number
puts fibonacci(user_number)