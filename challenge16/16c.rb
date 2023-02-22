# initial information
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}

# create field array
field = [:email, :address, :phone]

# define method that populates the contacts hash with the contact_data
contacts.each do |name, hash|
    field.each do |field|
        hash[field] = contact_data.shift
    end
end

# output the populated contacts hash
p contacts