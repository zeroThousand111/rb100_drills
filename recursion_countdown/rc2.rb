# get user input
puts "Please enter a number to countdown from:"
user_number = gets.chomp.to_i

# define countdown method
def countdown(n)
    if n == 0
        puts "ZEROOOOOO!!!!"
    else
        puts n
        n = countdown(n-1)
    end
end

# invoke method on user input
countdown(user_number)