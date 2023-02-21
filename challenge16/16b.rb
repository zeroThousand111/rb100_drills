# original data
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

# create field array
field = [:email, :address, :phone]

# create method to populate the contacts hash
contacts.each do | contact, hash|
    field.each do |field|
        hash[field] = contact_data.shift
    end
end


# output the populated contacts hash
puts contacts   