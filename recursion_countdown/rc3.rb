# get user input
puts "Tell me a number to begin the countdown:"
start_number = gets.chomp.to_i

# define countdown method using recursion
def countdown(x)
    if x == 0
        puts "ZEROOOO!!"
    else
        puts x
        countdown(x-1)
    end
end

# invoke countdown method using user input
countdown(start_number)