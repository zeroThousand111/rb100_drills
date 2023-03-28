array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# puts every item in the array using a loop
# index = 4
# loop do
#     puts array[index]
#     index +=1
#     break if index == array.size
# end

# puts every item in the array using each method
# array.each { |item| puts item if item >=5}

# array.each do |item|
#     puts item if item >= 5 
# end

# create a new array based on the select method
# new_array = array.select do |item|
#     item.odd?
# end

# create a new transformed array based on the map method
# new_array = array.map do |item|
#     item + 1
# end

# mutate the array using the map! method
array.map! do |item|
    item + 1
end

# p new_array
p array