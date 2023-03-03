# get user input
puts "Please enter a number (n) and then I will calculate which number is n in the Fibonacci Sequence:"
user_number = gets.chomp.to_i

# define method to calculate Fibonacci number using recursion
def fibonacci(n)
    if n < 2
        return n
    else
        n = fibonacci(n-1) + fibonacci(n-2)
    end
end

# invoke method on user number
puts fibonacci(user_number)