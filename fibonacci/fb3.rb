# get user input
puts "What number in the Fibonacci sequence would you like me to calculate?"
user_index_number = gets.chomp.to_i

# define fibonacci method using recursion
def fibonacci(n)
    if n < 2
        return n
    else
        n = fibonacci(n-1) + fibonacci(n-2)
    end
end

# invoke fibonacci method on user input
puts "The #{user_index_number}th number in the Fibonacci sequence is #{fibonacci(user_index_number)}!"