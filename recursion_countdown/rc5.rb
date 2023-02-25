# get user input
puts "Please enter a number to countdown from:"
user_number = gets.chomp.to_i

# define countdown method using recursion
def countdown(n)
    if n == 0
        puts "The End....!"
    else 
        puts n
        countdown(n-1)
    end
end

# invoke countdown method on the user input
countdown(user_number)

