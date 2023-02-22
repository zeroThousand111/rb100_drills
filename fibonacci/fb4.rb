# get user input
puts "Which number in the Fibonacci sequence would you like me to calculate?"
user_number = gets.chomp.to_i

# define fibonacci method with recursion
def fibonacci(n)
    if n < 2
        return n
    else 
        n = fibonacci(n-1) + fibonacci(n-2)
    end
end

# output answer
puts "The #{user_number}th number in the Fibonacci sequence is #{fibonacci(user_number)}!"