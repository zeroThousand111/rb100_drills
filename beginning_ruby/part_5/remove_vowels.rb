words = ["green", "yellow", "black", "white"]

def remove_vowels(array)
    array.each do | word|
        word.gsub!(/[aeiou]/, '')
    end
    joined_array = array.join(", ")
    puts joined_array
end


remove_vowels(words)