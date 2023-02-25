# get user input
puts "Enter index number for Fibonacci sequence:"
user_number = gets.chomp.to_i

# define method using recursion
def fibonacci(n)
    if n <2
        return n
    else
        n = fibonacci(n-1) + fibonacci(n-2)
    end
end

# invoke method on user input
puts "The #{user_number}th number in the Fibonacci Sequence is #{fibonacci(user_number)}"
