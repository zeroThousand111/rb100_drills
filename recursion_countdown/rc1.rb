# define start number from user input
puts "Enter a number to countdown from:"
n = gets.chomp.to_i
puts

# define countdown method using recursion

def countdown(n)
    if n == 0
        puts "ZERO.....LIFT OFF!"
    else
        puts n
        n = n -= 1
        countdown(n)
    end
end

# invoke method on start number

countdown(n)