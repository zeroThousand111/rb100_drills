# Declare initial arrays
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"],
            ["bobmccoy@hottermail.com", "Secret Hideout", "061-123-4567"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}, "Bob McCoy" => {}}
 
# Create array of fields that are keys in contact_info
fields = [:email, :address, :phone]

# define a method to populate each key-value pair in contact_info
contacts.each_with_index do |(name, contact_info_hash), idx |      
    fields.each do |field|
        contact_info_hash[field] = contact_data[idx].shift
    end
end

# Output the size of the contacts hash
puts " "
puts "The contacts hash is currently contains #{contacts.size} contacts."
puts " "
puts " - - - "

# Output the contacts_info_hash for each named contact in the contacts hash
contacts.each {|name, contact_info_hash| puts "The contact details of #{name} are #{contact_info_hash}"}
puts " "
puts " - - - "

# Output each item in the contacts_info_hash for each named contact in the contacts hash
puts " "
contacts.each {|name, contact_info_hash| contact_info_hash.each{|field, info| puts "The details for #{name}'s #{field} is #{info}"}}
puts " "
puts " - - - "
puts " "