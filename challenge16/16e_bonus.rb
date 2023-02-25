contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

# define method
=begin
contacts.each do |user, hash|
    field.each do |field|
        hash[field] = contact_data.shift
    end
end
=end

# define method with one-line syntax
contacts.each_with_index {|(user, hash), idx| fields.each {|field| hash[field] = contact_data[idx].shift}}
p contacts