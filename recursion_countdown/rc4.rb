# get user input
puts "Please enter a number from which to countdown:"
user_start_number = gets.chomp.to_i

# define countdown method using recursion

def countdown(n)
    if n == 0
        puts "BOOOM!!"
    else
        puts n
        n = countdown(n-1)
    end
end

countdown(user_start_number)