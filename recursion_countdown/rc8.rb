# get user input
puts "Please enter a number from which to countdown (but not too big!):"
user_number = gets.chomp.to_i

# define countdown method using recursion
def countdown(n)
    if n == 0
        puts "Zero!  Coming... ready or not!"
    else
        puts n
        n = countdown(n-1)
    end
end

# invoke method on user input
countdown(user_number)