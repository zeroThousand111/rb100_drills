contact_data = ["joe@email.com", "123 Main st.", "555-123-4567","Big Joe"]
contacts = {"Joe Smith" => {}}

field = [:email, :address, :phone, :nickname]

# define method
=begin
contacts.each do |user, hash|
    field.each do |field|
        hash[field] = contact_data.shift
    end
end
=end

# define method with one-line syntax
contacts.each {|user, hash| field.each {|field| hash[field] = contact_data.shift}}
p contacts