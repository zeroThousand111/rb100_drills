# get user input
puts "Please enter an index number of the Fibonacci sequence that you would like me to calculate:"
user_index = gets.chomp.to_i

# define method to calculate Fibonacci sequence using recursion
def fibonacci(n)
    if n < 2
        n
    else
        n = fibonacci(n-1) + fibonacci(n-2)
    end
end

# call method on user input
p fibonacci(user_index)