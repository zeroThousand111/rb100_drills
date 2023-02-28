# get user input
puts "Enter a number to countdown from:"
user_start_number = gets.chomp.to_i

# define countdown method using recursion
def countdown(n)
    if n == 0
        puts "ZERO!"
    else
        puts n
        n = countdown(n-1)
    end
end

# invoke method on user input

countdown(user_start_number)