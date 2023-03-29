def fizzbuzz(start, finish)
    i = start
    n = finish-start+1
    n.times do
        if (i % 3 == 0) && (i % 5 == 0)
            puts "FizzBuzz"
        elsif i % 3 == 0
            puts "Fizz"
        elsif i % 5 == 0
            puts "Buzz"
        else
            puts i
        end
        i += 1
    end
end

# get user input
puts "Please enter number to count from:"
start = gets.chomp.to_i

puts "Please enter number to count to:"
finish = gets.chomp.to_i

fizzbuzz(start, finish)