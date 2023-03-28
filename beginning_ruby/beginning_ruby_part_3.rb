array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

index = 4
loop do
    puts array[index]
    index +=1
    break if index == array.size
end

array.each { |item| puts item if item >=5}

array.each do |item|
    puts item if item >= 5 
end