# def fizzbuzz(start, finish)
#     array = (start..finish).to_a
#     array.each do | number|
#         if (number % 3 == 0) && (number % 5 == 0)
#             puts "FizzBuzz"
#         elsif number % 3 == 0
#             puts "Fizz"
#         elsif number % 5 == 0 
#             puts "Buzz"
#         else 
#             puts number
#         end
#     end
# end


def fizzbuzz(start, finish)
    array = (start..finish).to_a
    new_array = []
    new_array = array.map do | number|
        if (number % 3 == 0) && (number % 5 == 0)
            "FizzBuzz"
        elsif number % 3 == 0
            "Fizz"
        elsif number % 5 == 0 
            "Buzz"
        else 
            number
        end
    end
    puts new_array.join(", ")
end


fizzbuzz(1,15)