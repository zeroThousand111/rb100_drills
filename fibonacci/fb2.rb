# get user input
puts "What number in the Fibonacci sequence would you like to know?"
index = gets.chomp.to_i

# define fibonacci method with recursion
def fibonacci(n)
    if n < 2
        return n
    else
        n = fibonacci(n-1) + fibonacci(n-2)
    end
end

# invoke fibonacci method on user input
puts "The #{index}th number in the fibonacci sequence is #{fibonacci(index)}."