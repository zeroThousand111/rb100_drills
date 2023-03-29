def reverse_string(string)
    reversed_string_array = []
    string_array = []
    string_array = string.split(//)
    size = string_array.size
    size.times do 
        reversed_string_array << string_array.pop
    end
    p reversed_string_array
    reversed_string_array.join
end

puts reverse_string("stressed")
puts reverse_string("hello")