contact_data = ["joe@email.com", "123 Main st.", "555-123-4567","Big Joe"]
contacts = {"Joe Smith" => {}}

field = [:email, :address, :phone, :nickname]

contacts.each do |name, hash|
    field.each do |field|
        hash[field] = contact_data.shift
    end
end

p contacts