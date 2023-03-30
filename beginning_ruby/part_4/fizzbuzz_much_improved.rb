# fizzbuzz method
def fizzbuzz(start, finish)
    array = (start..finish).to_a
    temp_array = []
    array.each do | n |
        if (n % 3 == 0) & (n % 5 == 0)
            temp_array << "FizzBuzz"
        elsif (n % 3 == 0)
            temp_array << "Fizz"
        elsif (n % 5 == 0)
            temp_array << "Buzz"
        else
            temp_array << n
        end
    end
    return temp_array.join(", ")
end

# puts fizzbuzz(1, 15)

# user input section
puts "Please enter the start number:"
start = gets.chomp.to_i
puts "Please enter the finish number:"
finish = gets.chomp.to_i

puts fizzbuzz(start, finish)