# original data
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"],
            ["jimbob@hotmoo.com", "Secret Avenue", "0891 50 50 50"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}, "Jim Bob" => {}}

# create field array
field = [:email, :address, :phone]

# create method to populate the contacts hash
contacts.each_with_index do | (contact, hash), index|
    field.each do |field|
        hash[field] = contact_data[index].shift
    end
end


# output the populated contacts hash
puts contacts   