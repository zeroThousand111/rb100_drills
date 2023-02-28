# get user input
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