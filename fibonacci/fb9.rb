# define fibonacci calculator method
def fibonacci(n)
    if n <= 2
        n
    else
        n = fibonacci(n-1) + fibonacci(n-2)
    end
end

# get user input
puts "Enter the nth number in the Fibonacci sequence that you would like me to calculate:"
user_number = gets.chomp.to_i

puts "The #{user_number}th number in the Fibonacci sequence is... #{fibonacci(user_number)}!"